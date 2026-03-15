import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import 'section_header.dart';
import 'custom_button.dart';

const List<String> _eventTypes = [
  'Birthday',
  'Baby Shower',
  'Wedding',
  'Other',
];

/// Tarjeta del formulario de reserva con campos y estilos unificados.
class BookingFormCard extends StatelessWidget {
  const BookingFormCard({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.dateController,
    required this.selectedEventType,
    required this.onEventTypeChanged,
    required this.onSelectDate,
    required this.isSending,
    required this.onSubmit,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController dateController;
  final String selectedEventType;
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
                hint: 'Nombre Completo',
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Ingresa tu nombre' : null,
              ),
              const SizedBox(height: 16),
              _BookingTextField(
                controller: phoneController,
                icon: Icons.phone,
                hint: 'Número de Teléfono',
                keyboardType: TextInputType.phone,
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Ingresa tu teléfono' : null,
              ),
              const SizedBox(height: 16),
              _BookingTextField(
                controller: emailController,
                icon: Icons.email,
                hint: 'Correo Electrónico (opcional)',
                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return null;
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(v)) {
                    return 'Correo no válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _BookingDateField(
                controller: dateController,
                onTap: onSelectDate,
              ),
              const SizedBox(height: 16),
              _BookingDropdown(
                value: selectedEventType,
                onChanged: onEventTypeChanged,
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 52,
                child: isSending
                    ? const Center(
                        child: CircularProgressIndicator(color: AppColors.primary),
                      )
                    : CustomButton(
                        text: 'RESERVAR AHORA',
                        onPressed: onSubmit,
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
    this.validator,
  });

  final TextEditingController controller;
  final IconData icon;
  final String hint;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
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
  });

  final TextEditingController controller;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: onTap,
      validator: (v) =>
          (v == null || v.trim().isEmpty) ? 'Selecciona la fecha del evento' : null,
      decoration: InputDecoration(
        hintText: 'Fecha del Evento',
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
    required this.onChanged,
  });

  final String value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      hint: Text('Tipo de Evento', style: AppTextStyles.body),
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
      items: _eventTypes
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: onChanged,
      validator: (v) => v == null ? 'Selecciona el tipo de evento' : null,
    );
  }
}
