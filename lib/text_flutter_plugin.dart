
import 'dart:async';

import 'package:flutter/services.dart';

class TextFlutterPlugin {
  static const MethodChannel _channel =
      const MethodChannel('text_flutter_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('showCaptcha');
    return version;
  }
}
