
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/services.dart';

class YidunPlugin {
  static const MethodChannel _channel =
      const MethodChannel('yidun_plugin');

  // 测试通道是否成功
  static Future<String> get platformVersion   async {
    return  await _channel.invokeMethod('show');
  }
  // 展示
  static Future<Void> showCaptcha (String captchaId) async {
    Map<String, Object> map = {
      "captchaId": captchaId,
    };
    return  await _channel.invokeMethod('showCaptcha',map);
  }
}