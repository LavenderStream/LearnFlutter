import 'package:flutter/services.dart';

class LogUtil {
  static const String _CHANNEL_NAME = "org.tiny.plugins.log.LogUtil";
  static const _platform = const MethodChannel(_CHANNEL_NAME);

  static v(String log) {
    _platform.invokeMethod('v', {'message': log});
  }

  static d(String log) {
    _platform.invokeMethod('d', {'message': log});
  }

  static i(String log) {
    _platform.invokeMethod('i', {'message': log});
  }

  static w(String log) {
    _platform.invokeMethod('w', {'message': log});
  }

  static e(String log) {
    _platform.invokeMethod('e', {'message': log});
  }

  static wtf(String log) {
    _platform.invokeMethod('wtf', {'message': log});
  }
}
