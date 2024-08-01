import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// 设备工具类，提供一些常用的设备操作方法
class NDeviceUtility {
  /// 隐藏软键盘
  /// [context] - 上下文对象
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// 设置状态栏颜色
  /// [color] - 状态栏颜色
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  /// 判断当前是否为横屏模式
  /// [context] - 上下文对象
  /// 返回值为布尔类型，true表示横屏，false表示非横屏
  static bool isLandscaperOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// 判断当前是否为竖屏模式
  /// [context] - 上下文对象
  /// 返回值为布尔类型，true表示竖屏，false表示非竖屏
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  /// 设置全屏模式
  /// [enable] - 是否启用全屏模式
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  /// 获取屏幕高度
  /// 返回值为屏幕高度（像素）
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// 获取屏幕宽度
  /// [context] - 上下文对象
  /// 返回值为屏幕宽度（像素）
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// 获取设备像素比
  /// 返回值为设备像素比
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  /// 获取状态栏高度
  /// 返回值为状态栏高度（像素）
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  /// 获取底部导航栏高度
  /// 返回值为底部导航栏高度（像素）
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  /// 获取应用栏（AppBar）高度
  /// 返回值为应用栏高度（像素）
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  /// 获取键盘高度
  /// 返回值为键盘高度（像素）
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  /// 检测键盘是否可见
  /// 返回值为布尔类型，true表示键盘可见，false表示键盘不可见
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  /// 检测当前是否为物理设备
  /// 返回值为布尔类型，true表示是物理设备，false表示不是
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  /// 触发一次震动
  /// [duration] - 震动持续时长
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  /// 设置设备首选的屏幕方向
  /// [orientations] - 支持的屏幕方向列表
  static Future<void> setPreferredOrientation(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  /// 隐藏状态栏
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  /// 显示状态栏
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  /// 检测设备是否有网络连接
  /// 返回值为布尔类型，true表示有网络连接，false表示没有
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  /// 判断当前设备是否为iOS设备
  /// 返回值为布尔类型，true表示是iOS设备，false表示不是
  static bool isIOS() {
    return Platform.isIOS;
  }

  /// 判断当前设备是否为Android设备
  /// 返回值为布尔类型，true表示是Android设备，false表示不是
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  /// 打开URL链接
  /// [url] - 需要打开的URL链接
  static void launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
