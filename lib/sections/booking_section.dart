import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../controllers/booking_form_controller.dart';
import '../services/telegram_booking_service.dart';
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
  late final TelegramBookingService _bookingService;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bookingService = TelegramBookingService(
      botToken: _telegramBotToken,
      chatId: _telegramChatId,
    );
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

  Future<void> _sendToTelegram() async {
    setState(() => _isSending = true);
    final result = await _bookingService.sendBooking(
      BookingFormController.buildRequest(
        name: _nameController.text,
        phone: _phoneController.text,
        email: _emailController.text,
        date: _dateController.text,
        eventType: _selectedEventType,
      ),
    );
    if (!mounted) return;

    setState(() => _isSending = false);

    switch (result) {
      case BookingSendResult.success:
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('¡Reserva enviada! Nos contactaremos pronto.'),
            backgroundColor: AppColors.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
        break;
      case BookingSendResult.invalidConfiguration:
        _showErrorDialog('No se pudo enviar. Revisa el token y el chat_id.');
        break;
      case BookingSendResult.networkError:
        _showErrorDialog('Sin conexión a internet. Intenta de nuevo.');
        break;
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
            eventTypes: BookingFormController.eventTypes,
            nameValidator: BookingFormController.validateName,
            phoneValidator: BookingFormController.validatePhone,
            emailValidator: BookingFormController.validateEmail,
            dateValidator: BookingFormController.validateDate,
            eventTypeValidator: BookingFormController.validateEventType,
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
