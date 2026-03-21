/// Credenciales del bot de Telegram inyectadas en tiempo de compilación.
///
/// Por defecto se usan los valores anteriores del proyecto (mismo comportamiento
/// que antes de este archivo). Para producción en Netlify u otro CI, puedes
/// sobrescribir sin tocar el código:
///
/// `flutter build web --dart-define=TELEGRAM_BOT_TOKEN=... --dart-define=TELEGRAM_CHAT_ID=...`
abstract final class TelegramEnv {
  TelegramEnv._();

  /// Valores por defecto: entorno de pruebas actual (no el teléfono del cliente).
  static const String _defaultBotToken =
      '8415332181:AAGGDX3Ieey9Nx-mxlc-OCaSj7Dibhw7vjk';
  static const String _defaultChatId = '5169254921';

  static const String botToken = String.fromEnvironment(
    'TELEGRAM_BOT_TOKEN',
    defaultValue: _defaultBotToken,
  );

  static const String chatId = String.fromEnvironment(
    'TELEGRAM_CHAT_ID',
    defaultValue: _defaultChatId,
  );
}
