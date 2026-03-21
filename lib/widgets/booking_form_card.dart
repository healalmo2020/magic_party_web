import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import 'section_header.dart';
import 'custom_button.dart';

/// Tarjeta del formulario de reserva: solo presentación.
///
/// La validación y la lógica de envío vienen del controlador;
/// este widget solo muestra campos y delega validadores y onSubmit.
class BookingFormCard extends StatelessWidget {
  const BookingFormCard({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.locationController,
    required this.dateController,
    required this.selectedEventType,
    required this.eventTypes,
    required this.nameValidator,
    required this.phoneValidator,
    required this.emailValidator,
    required this.locationValidator,
    required this.dateValidator,
    required this.eventTypeValidator,
    required this.onEventTypeChanged,
    required this.onSelectDate,
    required this.isSending,
    required this.onSubmit,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController locationController;
  final TextEditingController dateController;
  final String selectedEventType;
  final List<String> eventTypes;
  final String? Function(String?) nameValidator;
  final String? Function(String?) phoneValidator;
  final String? Function(String?) emailValidator;
  final String? Function(String?) locationValidator;
  final String? Function(String?) dateValidator;
  final String? Function(String?) eventTypeValidator;
  final ValueChanged<String?> onEventTypeChanged;
  final VoidCallback onSelectDate;
  final bool isSending;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 800;
    return Card(
      elevation: 8,
      shadowColor: AppColors.primary.withValues(alpha: 0.15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 24 : 40),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionHeader(
                title: 'Book Your Event',
                subtitle: "Let's make your celebration magical!",
                titleStyle: AppTextStyles.h2.copyWith(color: AppColors.primary),
              ),
              const SizedBox(height: 32),
              _BookingTextField(
                controller: nameController,
                icon: Icons.person,
                hint: 'Full name',
                validator: nameValidator,
              ),
              const SizedBox(height: 16),
              _BookingTextField(
                controller: phoneController,
                icon: Icons.phone,
                hint: 'Phone number',
                keyboardType: TextInputType.phone,
                validator: phoneValidator,
              ),
              const SizedBox(height: 16),
              _BookingTextField(
                controller: emailController,
                icon: Icons.email,
                hint: 'Email (optional)',
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                enableSuggestions: false,
                validator: emailValidator,
              ),
              const SizedBox(height: 16),
              _BookingTextField(
                controller: locationController,
                icon: Icons.location_on,
                hint: 'City or ZIP code',
                keyboardType: TextInputType.streetAddress,
                validator: locationValidator,
              ),
              const SizedBox(height: 16),
              _BookingDateField(
                controller: dateController,
                onTap: onSelectDate,
                validator: dateValidator,
              ),
              const SizedBox(height: 16),
              _BookingDropdown(
                value: selectedEventType,
                items: eventTypes,
                onChanged: onEventTypeChanged,
                validator: eventTypeValidator,
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 52,
                child: isSending
                    ? const Center(
                        child: CircularProgressIndicator(color: AppColors.primary),
                      )
                    : CustomButton(
                        text: 'BOOK NOW',
                        onPressed: onSubmit,
                        semanticsLabel: 'Submit booking request',
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingTextField extends StatelessWidget {
  const _BookingTextField({
    required this.controller,
    required this.icon,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.validator,
  });

  final TextEditingController controller;
  final IconData icon;
  final String hint;
  final TextInputType keyboardType;
  final bool autocorrect;
  final bool enableSuggestions;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      enableSuggestions: enableSuggestions,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, size: 20, color: Colors.grey.shade600),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}

class _BookingDateField extends StatelessWidget {
  const _BookingDateField({
    required this.controller,
    required this.onTap,
    required this.validator,
  });

  final TextEditingController controller;
  final VoidCallback onTap;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: onTap,
      validator: validator,
      decoration: InputDecoration(
        hintText: 'Event date',
        prefixIcon: Icon(Icons.calendar_today, size: 20, color: Colors.grey.shade600),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}

class _BookingDropdown extends StatelessWidget {
  const _BookingDropdown({
    required this.value,
    required this.items,
    required this.onChanged,
    required this.validator,
  });

  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value.isNotEmpty ? value : null,
      hint: Text('Event type', style: AppTextStyles.body),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.celebration, size: 20, color: Colors.grey.shade600),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      items: items
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
