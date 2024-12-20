import 'dart:ui';

const lightModePrimary = Color(0xFF52d053);
const lightModeSecondary = Color(0xFF3f6d4e);
const lightModeBackground = Color(0xFFf5f5f5);

const darkModePrimary = Color(0xFF965fd4);
const darkModeSecondary = Color(0xFF734f9a);
const darkModeBackground = Color(0xFF1d1a2f);

class AssetsManager {
  static const String _images = 'assets/images/';
  static const String _lottie = 'assets/lottie/';

  static const String avatar = '${_images}profile-user.png';

  static const String cat = '${_lottie}cat.json';
  static const String loadingLight = '${_lottie}loading-dark.json';
  static const String loadingDark = '${_lottie}loading-light.json';
}
