import 'package:flutter_test/flutter_test.dart';
import 'package:amap_flutter_location_web/amap_flutter_location_web.dart';
import 'package:amap_flutter_location_web/amap_flutter_location_web_platform_interface.dart';
import 'package:amap_flutter_location_web/amap_flutter_location_web_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAmapFlutterLocationWebPlatform
    with MockPlatformInterfaceMixin
    implements AmapFlutterLocationWebPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AmapFlutterLocationWebPlatform initialPlatform = AmapFlutterLocationWebPlatform.instance;

  test('$MethodChannelAmapFlutterLocationWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAmapFlutterLocationWeb>());
  });

  test('getPlatformVersion', () async {
    AmapFlutterLocationWeb amapFlutterLocationWebPlugin = AmapFlutterLocationWeb();
    MockAmapFlutterLocationWebPlatform fakePlatform = MockAmapFlutterLocationWebPlatform();
    AmapFlutterLocationWebPlatform.instance = fakePlatform;

    expect(await amapFlutterLocationWebPlugin.getPlatformVersion(), '42');
  });
}
