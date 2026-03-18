import 'dart:convert';

import 'package:http/http.dart' as http;

/// Datos necesarios para enviar una reserva a Telegram.
class BookingRequest {
  BookingRequest({
    required this.name,
    required this.phone,
    required this.email,
    required this.cityOrZip,
    required this.date,
    required this.eventType,
  });

  final String name;
  final String phone;
  final String email;
  final String cityOrZip;
  final String date;
  final String eventType;
}

enum BookingSendResult {
  success,
  invalidConfiguration,
  networkError,
}

/// Servicio aislado para el envío de reservas vía Telegram.
///
/// Esta clase no conoce nada de Flutter widgets ni de UI.
class TelegramBookingService {
  TelegramBookingService({
    required this.botToken,
    required this.chatId,
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final String botToken;
  final String chatId;
  final http.Client _httpClient;

  static String _escapeHtml(String text) {
    return text
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  Future<BookingSendResult> sendBooking(BookingRequest request) async {
    if (botToken.isEmpty || chatId.isEmpty) {
      return BookingSendResult.invalidConfiguration;
    }

    final escapedName = _escapeHtml(request.name.trim());
    final escapedPhone = _escapeHtml(request.phone.trim());
    final escapedEmail = _escapeHtml(request.email.trim());
    final escapedDate = _escapeHtml(request.date.trim());
    final escapedCityZip = _escapeHtml(request.cityOrZip.trim());
    final escapedEvent = _escapeHtml(request.eventType.trim());

    final message = '✨ <b>NEW BOOKING - MAGIC PARTY</b> ✨\n\n'
        '👤 <b>Client:</b> $escapedName\n'
        '📱 <b>Phone:</b> ${escapedPhone.isEmpty ? "—" : escapedPhone}\n'
        '📧 <b>Email:</b> ${escapedEmail.isEmpty ? "—" : escapedEmail}\n'
        '📍 <b>City / ZIP:</b> ${escapedCityZip.isEmpty ? "—" : escapedCityZip}\n'
        '📅 <b>Date:</b> $escapedDate\n'
        '🎈 <b>Event:</b> $escapedEvent\n\n'
        '<i>Hi, I found you on your website and would like a quote for this decor.</i>';

    final uri = Uri.parse(
      'https://api.telegram.org/bot$botToken/sendMessage',
    );

    try {
      final body = jsonEncode({
        'chat_id': chatId,
        'text': message,
        'parse_mode': 'HTML',
      });
      final response = await _httpClient.post(
        uri,
        headers: const {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return BookingSendResult.success;
      }
      return BookingSendResult.invalidConfiguration;
    } catch (_) {
      return BookingSendResult.networkError;
    }
  }
}

