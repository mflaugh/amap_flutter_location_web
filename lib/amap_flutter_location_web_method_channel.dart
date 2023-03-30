import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'amap_flutter_location_web_platform_interface.dart';

/// An implementation of [AmapFlutterLocationWebPlatform] that uses method channels.
class MethodChannelAmapFlutterLocationWeb extends AmapFlutterLocationWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('amap_flutter_location_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
