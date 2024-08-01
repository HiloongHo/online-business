/// 图片资源类，用于集中管理应用中使用的图片资源
class NImages {
  /// 私有构造方法，防止外部直接构造实例
  NImages._();

  /// 应用深色模式Logo图片路径
  static const String darkAppLogo = 'assets/logos/dark_app_logo.png';
  
  /// 应用浅色模式Logo图片路径
  static const String lightAppLogo = 'assets/logos/light_app_logo.png';

  /// Google图标图片路径
  static const String google = "assets/logos/google_icon.png";
  
  /// Facebook图标图片路径
  static const String facebook = "assets/logos/facebook_icon.png";

  static const String onBoardingImage1 = "assets/images/on_boarding_images/sammy-searching.gif";
  static const String onBoardingImage2 = "assets/images/on_boarding_images/sammy-shopping.gif";
  static const String onBoardingImage3 = "assets/images/on_boarding_images/sammy-delivering.gif";
}
