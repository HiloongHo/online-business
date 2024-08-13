import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:online_business/features/authentication/screens/login/login.dart';
import 'package:online_business/features/authentication/screens/onboarding/onboarding.dart';

/// 认证仓库类，用于管理应用的认证逻辑。
/// 继承自GetxController，允许在Flutter应用中使用GetX进行状态管理。
class AuthenticationRepository extends GetxController {
  // 单例模式获取AuthenticationRepository的实例。
  static AuthenticationRepository get instance => Get.find();

  // 使用GetStorage插件来存取设备上的数据。
  final deviceStorage = GetStorage();

  /// 当控制器准备好时调用的方法。
  /// 在这里，移除启动屏并调用screenRedirect方法以确定导航到哪个屏幕。
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// 根据用户是否首次使用应用，导航到相应的屏幕。
  /// 如果不是首次使用，则导航到登录屏幕；否则导航到引导屏幕。
  screenRedirect() async {
    if (kDebugMode) {
      print("============GET STORAGE ============");
      print(deviceStorage.read("IsFirstTime"));
    }

    deviceStorage.writeIfNull("IsFirstTime", true);
    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }
}
