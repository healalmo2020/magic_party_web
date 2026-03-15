import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../core/colors.dart';
import '../widgets/booking_form_card.dart';

/// Token del bot de Telegram (obtener con @BotFather).
const String _telegramBotToken = '8415332181:AAGGDX3Ieey9Nx-mxlc-OCaSj7Dibhw7vjk';
/// ID del chat donde recibir las reservas (ej: -1001234567890 o tu user id).
const String _telegramChatId = '5169254921';

class BookingSection extends StatefulWidget {
  const BookingSection({super.key});

  @override
  State<BookingSection> createState() => _BookingSectionState();
}

class _BookingSectionState extends State<BookingSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateController = TextEditingController();
  String _selectedEventType = 'Birthday';
  bool _isSending = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date != null) {
      _dateController.text = '${date.day}/${date.month}/${date.year}';
    }
  }

  static String _escapeHtml(String text) {
    return text
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  Future<void> _sendToTelegram() async {
    final name = _escapeHtml(_nameController.text.trim());
    final phone = _escapeHtml(_phoneController.text.trim());
    final email = _escapeHtml(_emailController.text.trim());
    final date = _escapeHtml(_dateController.text.trim());
    final event = _escapeHtml(_selectedEventType);

    final message = '✨ <b>NUEVA RESERVA - MAGIC PARTY</b> ✨\n\n'
        '👤 <b>Cliente:</b> $name\n'
        '📱 <b>Teléfono:</b> ${phone.isEmpty ? "—" : phone}\n'
        '📧 <b>Email:</b> ${email.isEmpty ? "—" : email}\n'
        '📅 <b>Fecha:</b> $date\n'
        '🎈 <b>Evento:</b> $event\n\n'
        '<i>Hola, vi su página y quiero cotizar esta decoración.</i>';

    final uri = Uri.parse(
      'https://api.telegram.org/bot$_telegramBotToken/sendMessage',
    );

    setState(() => _isSending = true);
    try {
      final body = jsonEncode({
        'chat_id': _telegramChatId,
        'text': message,
        'parse_mode': 'HTML',
      });
      final response = await http.post(
        uri,
        headers: const {'Content-Type': 'application/json'},
        body: body,
      );
      if (!context.mounted) return;
      if (response.statusCode >= 200 && response.statusCode < 300) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('¡Reserva enviada! Nos contactaremos pronto.'),
            backgroundColor: AppColors.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
      } else {
        _showErrorDialog('No se pudo enviar. Revisa el token y el chat_id.');
      }
    } catch (_) {
      if (context.mounted) {
        _showErrorDialog('Sin conexión a internet. Intenta de nuevo.');
      }
    } finally {
      if (mounted) setState(() => _isSending = false);
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Entendido'),
          ),
        ],
      ),
    );
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      _sendToTelegram();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 800;
    final padding = isMobile ? 24.0 : 48.0;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: padding),
      color: AppColors.lightPinkBackground,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: BookingFormCard(
            formKey: _formKey,
            nameController: _nameController,
            phoneController: _phoneController,
            emailController: _emailController,
            dateController: _dateController,
            selectedEventType: _selectedEventType,
            onEventTypeChanged: (v) => setState(() => _selectedEventType = v ?? 'Birthday'),
            onSelectDate: _selectDate,
            isSending: _isSending,
            onSubmit: _onSubmit,
          ),
        ),
      ),
    );
  }
}
