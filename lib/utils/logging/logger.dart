import 'package:logger/logger.dart';

/// NLoggerHelper类提供了一组静态方法，用于简化日志记录操作。
/// 它使用Logger实例来记录不同级别的日志信息。
class NLoggerHelper {
  /// _logger是Logger类的实例，用于实际的日志记录操作。
  /// 它配置了PrettyPrinter来美化日志输出，并设置了日志级别为debug，
  /// 以便在开发期间查看详细的信息。
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  /// 记录debug级别的日志信息。
  /// [message]是要记录的日志信息。
  static void debug(String message) {
    _logger.d(message);
  }

  /// 记录info级别的日志信息。
  /// [message]是要记录的日志信息。
  static void info(String message) {
    _logger.i(message);
  }

  /// 记录warning级别的日志信息。
  /// [message]是要记录的日志信息。
  static void warning(String message) {
    _logger.w(message);
  }

  /// 记录error级别的日志信息。
  /// [message]是要记录的日志信息。
  /// [error]是可选参数，用于记录异常信息。
  static void error(String message, [dynamic error]) {
    // 当有异常信息时，将其和当前的堆栈信息一起记录。
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
