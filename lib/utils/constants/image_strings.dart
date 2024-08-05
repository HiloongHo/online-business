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

  /// 应用引导页图片路径，共三张，用于展示应用功能
  static const String onBoardingImage1 = "assets/images/on_boarding_images/sammy-searching.gif";
  static const String onBoardingImage2 = "assets/images/on_boarding_images/sammy-shopping.gif";
  static const String onBoardingImage3 = "assets/images/on_boarding_images/sammy-delivering.gif";

  /// 产品展示图，用于展示各类产品的插图
  static const String productsIllustration = "assets/images/animations/sammy-remote-work.gif";
  /// 销售促销插图
  static const String productsSalesIllustration = "assets/images/animations/line-sale-speech-bubbles.png";
  /// 静态成功插图，用于展示成功页面
  static const String staticSuccessIllustration = "assets/images/animations/lounge-winners-trophy-and-medal.png";
  /// 飞机运送插图，用于展示配送信息
  static const String deliveredInPlaneIllustration = "assets/images/animations/sammy-come-back-later.png";
  /// 邮件接收插图，用于展示邮件通知
  static const String deliveredEmailIllustration = "assets/images/animations/sammy-man-receives-a-mail.png";
  /// 验证通过插图，用于展示验证成功
  static const String verifiedIllustration = "assets/images/animations/sammy-line-travel-and-backpack-with-passport-and-air-ticket.gif";

  /// 各类商品类别的图标路径
  static const String sportIcon = "assets/icons/categories/icons8-bowling-100.png";
  static const String clothIcon = "assets/icons/categories/icons8-tailors-dummy-100.png";
  static const String shoeIcon = "assets/icons/categories/icons8-shoes-100.png";
  static const String cosmeticsIcon = "assets/icons/categories/icons8-cosmetics-100.png";
  static const String animalIcon = "assets/icons/categories/icons8-dog-heart-64.png";
  static const String toyIcon = "assets/icons/categories/icons8-wooden-toy-car-64.png";
  static const String furnitureIcon = "assets/icons/categories/icons8-dining-chair-96.png";
  static const String jeweleryIcon = "assets/icons/categories/icons8-sparkling-diamond-50.png";
  static const String electronicsIcon = "assets/icons/categories/icons8-smartphone-94.png";

  /// 广告横幅图片路径，用于展示广告信息
  static const String banner1 = "assets/images/banners/banner-1.jpg";
  static const String banner2 = "assets/images/banners/banner-2.jpg";
  static const String banner3 = "assets/images/banners/banner-3.jpg";
}
