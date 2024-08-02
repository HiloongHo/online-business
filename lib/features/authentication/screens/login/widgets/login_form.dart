import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/authentication/screens/password_configuration/fogget_password.dart';
import 'package:online_business/navigation_menu.dart';
import 'package:online_business/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

/// 登录表单组件
///
/// 该组件用于用户登录，包含邮箱和密码输入，以及一些附加功能，如记住我、忘记密码和创建新账户。
class NLoginForm extends StatelessWidget {
  const NLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: NSizes.spaceBtwSections), // 用于分离表单部分和其他部分的间距
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: NTexts.email), // 邮箱输入框
              ),
              const SizedBox(
                height: NSizes.spaceBtwInputFields, // 用于分离两个输入框的间距
              ),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: NTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)), // 密码输入框
              ),
              const SizedBox(
                height: NSizes.spaceBtwInputFields / 2, // 用于分离密码输入框和记住我/忘记密码部分的间距
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}), // 记住我复选框
                      const Text(NTexts.rememberMe),
                    ],
                  ),
                  TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: const Text(NTexts.forgotPassword)) // 忘记密码按钮
                ],
              ),
              const SizedBox(
                height: NSizes.spaceBtwInputFields, // 用于分离表单内容和登录按钮的间距
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: NColors.primary
                  ),
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(NTexts.signIn), // 登录按钮
                ),
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections, // 用于分离登录按钮和创建账户按钮的间距
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: NColors.primary, backgroundColor: Colors.transparent,
                  ),
                  onPressed: () => Get.to(const SignupScreen()),
                  child: const Text(NTexts.createAccount), // 创建账户按钮
                ),
              ),
            ],
          ),
        ));
  }
}
