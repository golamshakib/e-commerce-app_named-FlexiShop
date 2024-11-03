import 'package:logger/logger.dart';

class YLoggerHelper {

  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customized the log levels based on your needs
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}