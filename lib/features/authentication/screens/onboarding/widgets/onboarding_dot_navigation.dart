import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

/// 导航栏小圆点组件，用于指示用户在引导页面的位置
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 获取引导页面的控制器实例
    final controller = OnBoardingController.instance;
    // 判断当前是否为深色模式
    final dark = NHelperFunctions.isDarkMode(context);
    // 返回一个定位组件，用于将小圆点指示器显示在屏幕底部附近
    return Positioned(
        bottom: NDeviceUtility.getBottomNavigationBarHeight() + 25,
        left: NSizes.defaultSpace,
        child: SmoothPageIndicator(
          // 使用控制器提供的页面控制器实例
          controller: controller.pageController,
          // 当小圆点被点击时，调用控制器的方法来处理页面跳转
          onDotClicked: controller.dotNavigationClick,
          // 总共三个引导页面
          count: 3,
          // 配置小圆点指示器的样式效果
          effect: ExpandingDotsEffect(
              // 根据是否为深色模式来确定小圆点的颜色
              activeDotColor: dark ? NColors.light : NColors.dark,
              // 设置小圆点的高度
              dotHeight: 6),
        ));
  }
}
