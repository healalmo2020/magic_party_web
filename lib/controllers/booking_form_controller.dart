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
      return 'Please enter your name';
    }
    return null;
  }

  /// Valida el teléfono.
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  /// Valida el email (opcional). Si está vacío es válido; si tiene valor debe ser formato correcto.
  static String? validateEmail(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return null;
    // Comparar contra el texto ya recortado (espacios al pegar ya no invalidan).
    // TLD de 2+ caracteres (.com, .network, etc.).
    final ok = RegExp(r'^[\w.%+-]+@[\w.-]+\.\w{2,}$').hasMatch(v);
    if (!ok) return 'Invalid email address';
    return null;
  }

  /// Ciudad o código postal (obligatorio).
  static String? validateCityOrZip(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter city or ZIP code';
    }
    return null;
  }

  /// Valida la fecha del evento.
  static String? validateDate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please select the event date';
    }
    return null;
  }

  /// Valida el tipo de evento.
  static String? validateEventType(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select an event type';
    }
    return null;
  }

  /// Construye el DTO para enviar al servicio a partir de los valores del formulario.
  static BookingRequest buildRequest({
    required String name,
    required String phone,
    required String email,
    required String cityOrZip,
    required String date,
    required String eventType,
  }) {
    return BookingRequest(
      name: name,
      phone: phone,
      email: email,
      cityOrZip: cityOrZip,
      date: date,
      eventType: eventType,
    );
  }
}
