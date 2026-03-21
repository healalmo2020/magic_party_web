/// Credenciales del bot de Telegram inyectadas en tiempo de compilación.
///
/// **Netlify (producción):** define `TELEGRAM_BOT_TOKEN` y `TELEGRAM_CHAT_ID`
/// en el panel del sitio; el build usa `--dart-define` (ver netlify.toml en la raíz).
///
/// **Local:** sin `--dart-define` se usan los valores por defecto de prueba.
/// Para probar con el mismo bot que producción:
/// `flutter run -d chrome --dart-define=TELEGRAM_BOT_TOKEN=... --dart-define=TELEGRAM_CHAT_ID=...`
abstract final class TelegramEnv {
  TelegramEnv._();

  /// Valores por defecto solo para desarrollo local (no producción).
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
