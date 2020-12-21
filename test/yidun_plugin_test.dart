import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yidun_plugin/yidun_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('yidun_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await YidunPlugin.platformVersion, '42');
  });
}
