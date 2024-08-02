import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 引导页控制器，用于管理引导页的页面切换逻辑
class OnBoardingController extends GetxController {
  // 单例模式获取控制器实例
  static OnBoardingController get instance => Get.find();

  // 页面控制器，用于控制页面视图的滚动
  final pageController = PageController();
  // 当前页面索引，使用Rx<int>以便观察者可以监听到值的变化
  Rx<int> currentPageIndex = 0.obs;

  /// 更新当前页面指示器的索引
  /// [index] 新的页面索引
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// 点击导航点时调用此方法以跳转到指定页面
  /// [index] 目标页面的索引
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// 切换到下一页
  /// 如果当前页是最后一页，则不执行任何操作
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // 切换到登录页面
      // Get.to(LoginScreen);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// 跳过当前页，直接跳转到最后一页
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
