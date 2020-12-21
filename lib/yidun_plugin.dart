
import 'dart:async';

import 'package:flutter/services.dart';

class YidunPlugin {
  static const MethodChannel _channel =
      const MethodChannel('yidun_plugin');

  static Future<String> get platformVersion async {
    return  await _channel.invokeMethod('show');
  }
}