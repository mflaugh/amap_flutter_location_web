
import 'amap_flutter_location_web_platform_interface.dart';

class AmapFlutterLocationWeb {
  Future<String?> getPlatformVersion() {
    return AmapFlutterLocationWebPlatform.instance.getPlatformVersion();
  }
}
