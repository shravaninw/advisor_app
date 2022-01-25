// @dart = 2.12
abstract class AppAssets {
  static const String _imageAssets = 'assets/images';

  String get onboardPage => '$_imageAssets/onboardPageImage.png';

  String get appLogo => '$_imageAssets/appLogo.png';
  String get appLogoColor => '$_imageAssets/appLogoColor.png';

  String get bot => '$_imageAssets/bot.png';
}
