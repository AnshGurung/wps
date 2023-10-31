class AssetUtils {
  static const _imageDir = 'assets/images';

  static const appLogo = '$_imageDir/app_logo.png';
  static const appLogoWhiteBg = '$_imageDir/app_logo_white_bg.png';
  static String getImage(String name) {
    return '$_imageDir/$name';
  }
}
