/// 图片资源类，用于集中管理应用中使用的图片资源
class NImages {
  /// 私有构造方法，防止外部直接构造实例
  NImages._();

  /// 应用深色模式Logo图片路径
  static const String darkAppLogo = 'assets/logos/n-store-splash-logo-black.png';
  
  /// 应用浅色模式Logo图片路径
  static const String lightAppLogo = 'assets/logos/n-store-splash-logo-white.png';

  /// Google图标图片路径
  static const String google = "assets/logos/google-icon.png";
  
  /// Facebook图标图片路径
  static const String facebook = "assets/logos/facebook-icon.png";

  static const String onBoardingImage1 = "assets/images/on_boarding_images/sammy-searching.gif";
  static const String onBoardingImage2 = "assets/images/on_boarding_images/sammy-shopping.gif";
  static const String onBoardingImage3 = "assets/images/on_boarding_images/sammy-delivering.gif";

  static const String productsIllustration = "assets/images/animations/sammy-remote-work.gif";
  static const String productsSalesIllustration = "assets/images/animations/line-sale-speech-bubbles.png";
  static const String staticSuccessIllustration = "assets/images/animations/lounge-winners-trophy-and-medal.png";
  static const String deliveredInPlaneIllustration = "assets/images/animations/sammy-come-back-later.png";
  static const String deliveredEmailIllustration = "assets/images/animations/sammy-man-receives-a-mail.png";
  static const String verifiedIllustration = "assets/images/animations/sammy-line-travel-and-backpack-with-passport-and-air-ticket.gif";
}
