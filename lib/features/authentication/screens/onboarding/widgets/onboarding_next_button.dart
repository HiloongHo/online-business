import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

/// [OnBoardingNextButton] 是一个用于在用户 onboard 引导页面上导航到下一个页面的按钮组件。
/// 它通过利用屏幕底部的空间和一个具有动态背景色的圆形按钮来实现，
/// 背景色根据当前主题是暗还是亮而变化。
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 获取当前是否为暗黑模式，以动态设置按钮的背景色。
    final dark = NHelperFunctions.isDarkMode(context);
    // 使用 Positioned 来确保按钮位于屏幕的右下角，
    // 避免被底部导航栏遮挡。
    return Positioned(
        right: NSizes.defaultSpace,
        bottom: NDeviceUtility.getBottomNavigationBarHeight(),
        // ElevatedButton 用于创建一个具有动态背景色的圆形按钮，
        // 按钮的颜色根据当前模式（暗黑或亮色）进行调整。
        // onPressed 回调用于调用 OnBoardingController 的 nextPage 方法，
        // 以实现导航到下一个 onboard 页面的功能。
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark? NColors.primary:Colors.black),
            onPressed: () => OnBoardingController.instance.nextPage(),
            child: const Icon(Iconsax.arrow_right)));
  }
}
