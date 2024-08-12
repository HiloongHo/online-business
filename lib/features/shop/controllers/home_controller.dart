import 'package:get/get.dart';

/// 主页控制器类，继承自 GetxController
class HomeController extends GetxController {
  /// 获取 HomeController 实例
  static HomeController get to => Get.find();

  /// 观察者模式，用于跟踪轮播图当前页码
  final carousalCurrentIndex = 0.obs;

  /// 更新轮播图的当前页码指示器
  /// [index] - 轮播图的新页码
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

}
