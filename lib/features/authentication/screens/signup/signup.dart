import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/common/widgets/login_signup/form_divider.dart';
import 'package:online_business/common/widgets/login_signup/social_buttons.dart';
import 'package:online_business/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/constants/text_strings.dart';

/// 注册屏幕组件
/// 该组件用于展示注册界面，包含表单、社交媒体登录按钮等
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用Scaffold搭建基本布局，包含一个可滚动的主体部分
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题文本，使用设备主题的中等标题样式
              Text(
                NTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // 用于分隔标题和内容的空白区域
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              // 注册表单组件
              const NSignupForm(),
              // 分隔表单和其他部分的空白区域
              const SizedBox(height: NSizes.spaceBtwSections,),
              // 分割线组件，用于区分不同部分，带上“或使用以下方式注册”的文本
              NFormDivider(dividerText: NTexts.orSignUpWith.capitalize!,),
              // 分隔分割线和社交媒体按钮的空白区域
              const SizedBox(height: NSizes.spaceBtwSections,),
              // 社交媒体登录按钮组件
              const NSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
