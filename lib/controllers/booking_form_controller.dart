import '../services/telegram_booking_service.dart';

/// Lógica de negocio del formulario de reserva: validación y construcción del request.
///
/// No conoce widgets ni Flutter; solo reglas de validación y datos para enviar.
/// La UI (BookingFormCard / BookingSection) usa este controlador y muestra el estado.
class BookingFormController {
  BookingFormController._();

  /// Tipos de evento disponibles para el dropdown.
  static const List<String> eventTypes = [
    'Birthday',
    'Baby Shower',
    'Wedding',
    'Other',
  ];

  /// Valida el nombre. Devuelve mensaje de error o null si es válido.
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Ingresa tu nombre';
    }
    return null;
  }

  /// Valida el teléfono.
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Ingresa tu teléfono';
    }
    return null;
  }

  /// Valida el email (opcional). Si está vacío es válido; si tiene valor debe ser formato correcto.
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Correo no válido';
    }
    return null;
  }

  /// Valida la fecha del evento.
  static String? validateDate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Selecciona la fecha del evento';
    }
    return null;
  }

  /// Valida el tipo de evento.
  static String? validateEventType(String? value) {
    if (value == null || value.isEmpty) {
      return 'Selecciona el tipo de evento';
    }
    return null;
  }

  /// Construye el DTO para enviar al servicio a partir de los valores del formulario.
  static BookingRequest buildRequest({
    required String name,
    required String phone,
    required String email,
    required String date,
    required String eventType,
  }) {
    return BookingRequest(
      name: name,
      phone: phone,
      email: email,
      date: date,
      eventType: eventType,
    );
  }
}
