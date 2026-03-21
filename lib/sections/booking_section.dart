import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/telegram_env.dart';
import '../controllers/booking_form_controller.dart';
import '../services/telegram_booking_service.dart';
import '../widgets/booking_form_card.dart';

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
  final _locationController = TextEditingController();
  final _dateController = TextEditingController();
  String _selectedEventType = 'Birthday';
  bool _isSending = false;
  late final TelegramBookingService _bookingService;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _locationController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bookingService = TelegramBookingService(
      botToken: TelegramEnv.botToken,
      chatId: TelegramEnv.chatId,
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
        cityOrZip: _locationController.text,
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
            content: Text('Booking sent! We will contact you soon.'),
            backgroundColor: AppColors.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
        break;
      case BookingSendResult.invalidConfiguration:
        _showErrorDialog('Could not send. Check the bot token and chat ID.');
        break;
      case BookingSendResult.networkError:
        _showErrorDialog('No internet connection. Please try again.');
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
            child: const Text('OK'),
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
            locationController: _locationController,
            dateController: _dateController,
            selectedEventType: _selectedEventType,
            eventTypes: BookingFormController.eventTypes,
            nameValidator: BookingFormController.validateName,
            phoneValidator: BookingFormController.validatePhone,
            emailValidator: BookingFormController.validateEmail,
            locationValidator: BookingFormController.validateCityOrZip,
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
