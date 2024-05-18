import 'package:logger/logger.dart';

class InitLogger {
  static final InitLogger _instance = InitLogger._internal();
  final _logger = Logger();

  factory InitLogger() {
    return _instance;
  }

  InitLogger._internal();

  void logDebug(String message) {
    _logger.d(message);
  }

  void logInfo(String message) {
    _logger.i(message);
  }

  void logWarning(String message) {
    _logger.w(message);
  }

  void logError(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
