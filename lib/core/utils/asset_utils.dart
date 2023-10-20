class AssetUtils {
  static const _imageDir = 'assets/images';

static const appLogo='$_imageDir/app_logo.png';
  static String getImage(String name) {
    return '$_imageDir/$name';
  }
}
