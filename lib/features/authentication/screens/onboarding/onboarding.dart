import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:online_business/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:online_business/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:online_business/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/text_strings.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

/// [OnBoardingScreen] 是应用的欢迎屏幕，用于展示应用的主要功能和使用方法。
/// 它使用了[PageView]来展示一系列的引导页面，用户可以通过底部的导航点或者直接跳过来到达不同的页面。
/// 在此屏幕中，用户可以通过点击下方的导航点或者使用跳过按钮来进入应用的主界面。
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 初始化引导屏幕的控制器
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // 使用PageView来展示一系列的引导页面
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: NImages.onBoardingImage1,
                title: NTexts.onBoardingTitle1,
                subTitle: NTexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: NImages.onBoardingImage2,
                title: NTexts.onBoardingTitle2,
                subTitle: NTexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: NImages.onBoardingImage3,
                title: NTexts.onBoardingTitle3,
                subTitle: NTexts.onBoardingSubtitle3,
              ),
            ],
          ),
          // 提供跳过按钮，用户可以跳过引导页面直接进入应用
          const OnBoardingSkip(),
          // 底部导航点，用于指示当前查看的页面
          const OnBoardingDotNavigation(),
          // 下一个按钮，用户可以通过点击来查看下一个引导页面
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
