import 'package:flutter_test/flutter_test.dart';
import 'package:magic_party/controllers/booking_form_controller.dart';

void main() {
  group('BookingFormController', () {
    group('validateName', () {
      test('returns error when null', () {
        expect(BookingFormController.validateName(null), 'Please enter your name');
      });

      test('returns error when empty', () {
        expect(BookingFormController.validateName(''), 'Please enter your name');
      });

      test('returns error when only whitespace', () {
        expect(BookingFormController.validateName('   '), 'Please enter your name');
      });

      test('returns null when non-empty', () {
        expect(BookingFormController.validateName('María García'), isNull);
      });
    });

    group('validatePhone', () {
      test('returns error when null', () {
        expect(BookingFormController.validatePhone(null), 'Please enter your phone number');
      });

      test('returns error when empty', () {
        expect(BookingFormController.validatePhone(''), 'Please enter your phone number');
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
        expect(BookingFormController.validateEmail('invalid'), 'Invalid email address');
        expect(BookingFormController.validateEmail('a@'), 'Invalid email address');
        expect(BookingFormController.validateEmail('@b.com'), 'Invalid email address');
      });

      test('returns null for valid format', () {
        expect(BookingFormController.validateEmail('a@b.co'), isNull);
        expect(BookingFormController.validateEmail('user@example.com'), isNull);
        expect(BookingFormController.validateEmail('  user@example.com  '), isNull);
        expect(BookingFormController.validateEmail('user+tag@sub.example.network'), isNull);
      });
    });

    group('validateCityOrZip', () {
      test('returns error when null or empty', () {
        expect(BookingFormController.validateCityOrZip(null), 'Please enter city or ZIP code');
        expect(BookingFormController.validateCityOrZip(''), 'Please enter city or ZIP code');
        expect(BookingFormController.validateCityOrZip('   '), 'Please enter city or ZIP code');
      });

      test('returns null when has value', () {
        expect(BookingFormController.validateCityOrZip('Newark'), isNull);
        expect(BookingFormController.validateCityOrZip('07001'), isNull);
      });
    });

    group('validateDate', () {
      test('returns error when null or empty', () {
        expect(BookingFormController.validateDate(null), 'Please select the event date');
        expect(BookingFormController.validateDate(''), 'Please select the event date');
        expect(BookingFormController.validateDate('   '), 'Please select the event date');
      });

      test('returns null when has value', () {
        expect(BookingFormController.validateDate('15/3/2025'), isNull);
      });
    });

    group('validateEventType', () {
      test('returns error when null or empty', () {
        expect(BookingFormController.validateEventType(null), 'Please select an event type');
        expect(BookingFormController.validateEventType(''), 'Please select an event type');
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
          cityOrZip: 'Newark 07102',
          date: '20/4/2025',
          eventType: 'Baby Shower',
        );
        expect(request.name, 'Ana');
        expect(request.phone, '5550000');
        expect(request.email, 'ana@test.com');
        expect(request.cityOrZip, 'Newark 07102');
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
