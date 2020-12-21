
import 'dart:async';

import 'package:flutter/services.dart';

class YidunPlugin {
  static const MethodChannel _channel =
      const MethodChannel('yidun_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
