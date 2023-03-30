import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amap_flutter_location_web/amap_flutter_location_web_method_channel.dart';

void main() {
  MethodChannelAmapFlutterLocationWeb platform = MethodChannelAmapFlutterLocationWeb();
  const MethodChannel channel = MethodChannel('amap_flutter_location_web');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
