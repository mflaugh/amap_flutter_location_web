import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'amap_flutter_location_web_method_channel.dart';

abstract class AmapFlutterLocationWebPlatform extends PlatformInterface {
  /// Constructs a AmapFlutterLocationWebPlatform.
  AmapFlutterLocationWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static AmapFlutterLocationWebPlatform _instance = MethodChannelAmapFlutterLocationWeb();

  /// The default instance of [AmapFlutterLocationWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmapFlutterLocationWeb].
  static AmapFlutterLocationWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AmapFlutterLocationWebPlatform] when
  /// they register themselves.
  static set instance(AmapFlutterLocationWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
