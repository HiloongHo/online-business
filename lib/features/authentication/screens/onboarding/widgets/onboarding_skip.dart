import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

/// 导航栏“跳过”按钮组件
/// 本组件在引导页面（OnBoarding）的导航栏上提供一个“跳过”按钮，用户点击此按钮可以跳过引导页面。
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 使用Positioned widget定位“跳过”按钮，使其出现在导航栏的右上角。
    // top位置使用NDeviceUtility.getAppBarHeight()来适应不同设备的导航栏高度。
    // right位置使用NSizes.defaultSpace来与右侧保持一定的间距。
    return Positioned(
        top: NDeviceUtility.getAppBarHeight(),
        right: NSizes.defaultSpace,
        // “跳过”按钮的实现，使用TextButton widget。
        // 按钮点击事件调用OnBoardingController实例的skipPage方法来跳过引导页面。
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("跳过"),
        ));
  }
}
