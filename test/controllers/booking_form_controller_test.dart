import 'package:flutter_test/flutter_test.dart';
import 'package:magic_party/controllers/booking_form_controller.dart';

void main() {
  group('BookingFormController', () {
    group('validateName', () {
      test('returns error when null', () {
        expect(BookingFormController.validateName(null), 'Ingresa tu nombre');
      });

      test('returns error when empty', () {
        expect(BookingFormController.validateName(''), 'Ingresa tu nombre');
      });

      test('returns error when only whitespace', () {
        expect(BookingFormController.validateName('   '), 'Ingresa tu nombre');
      });

      test('returns null when non-empty', () {
        expect(BookingFormController.validateName('María García'), isNull);
      });
    });

    group('validatePhone', () {
      test('returns error when null', () {
        expect(BookingFormController.validatePhone(null), 'Ingresa tu teléfono');
      });

      test('returns error when empty', () {
        expect(BookingFormController.validatePhone(''), 'Ingresa tu teléfono');
      });

      test('returns null when non-empty', () {
        expect(BookingFormController.validatePhone('5551234567'), isNull);
      });
    });

    group('validateEmail', () {
      test('returns null when null or empty', () {
        expect(BookingFormController.validateEmail(null), isNull);
        expect(BookingFormController.validateEmail(''), isNull);
        expect(BookingFormController.validateEmail('   '), isNull);
      });

      test('returns error for invalid format', () {
        expect(BookingFormController.validateEmail('invalid'), 'Correo no válido');
        expect(BookingFormController.validateEmail('a@'), 'Correo no válido');
        expect(BookingFormController.validateEmail('@b.com'), 'Correo no válido');
      });

      test('returns null for valid format', () {
        expect(BookingFormController.validateEmail('a@b.co'), isNull);
        expect(BookingFormController.validateEmail('user@example.com'), isNull);
      });
    });

    group('validateDate', () {
      test('returns error when null or empty', () {
        expect(BookingFormController.validateDate(null), 'Selecciona la fecha del evento');
        expect(BookingFormController.validateDate(''), 'Selecciona la fecha del evento');
        expect(BookingFormController.validateDate('   '), 'Selecciona la fecha del evento');
      });

      test('returns null when has value', () {
        expect(BookingFormController.validateDate('15/3/2025'), isNull);
      });
    });

    group('validateEventType', () {
      test('returns error when null or empty', () {
        expect(BookingFormController.validateEventType(null), 'Selecciona el tipo de evento');
        expect(BookingFormController.validateEventType(''), 'Selecciona el tipo de evento');
      });

      test('returns null when has value', () {
        expect(BookingFormController.validateEventType('Birthday'), isNull);
      });
    });

    group('buildRequest', () {
      test('maps all fields to BookingRequest', () {
        final request = BookingFormController.buildRequest(
          name: 'Ana',
          phone: '5550000',
          email: 'ana@test.com',
          date: '20/4/2025',
          eventType: 'Baby Shower',
        );
        expect(request.name, 'Ana');
        expect(request.phone, '5550000');
        expect(request.email, 'ana@test.com');
        expect(request.date, '20/4/2025');
        expect(request.eventType, 'Baby Shower');
      });
    });

    group('eventTypes', () {
      test('contains expected options', () {
        expect(BookingFormController.eventTypes, [
          'Birthday',
          'Baby Shower',
          'Wedding',
          'Other',
        ]);
      });
    });
  });
}
