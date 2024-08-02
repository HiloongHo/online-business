import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/styles/spacing_styles.dart';
import 'package:online_business/features/authentication/screens/login/widgets/login_form.dart';
import 'package:online_business/features/authentication/screens/login/widgets/login_header.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/constants/text_strings.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

/// 登录屏幕
///
/// 该屏幕提供了一个用户可以输入凭据以登录应用程序的表单。
/// 它还包括一些社交登录选项和其他相关元素。
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 检查当前是否是暗黑模式
    final dark = NHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // 登录页面的标题和图像部分
              const NLoginHeader(),
              // 用户凭据输入表单
              const NLoginForm(),
              // 分割线，用于分隔表单和社交登录按钮
              NFormDivider(
                dividerText: NTexts.orSignInWith.capitalize!,
              ),
              // 分隔表单和社交登录按钮的间距
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              // 社交登录按钮
              const NSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
