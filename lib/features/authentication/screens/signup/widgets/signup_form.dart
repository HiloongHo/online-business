import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../verify_email.dart';

/// [NSignupForm] 是一个 Stateless Widget，用于展示注册表单。
/// 它包含了用于输入用户信息的多个文本字段以及一个同意服务条款的复选框。
/// 用户可以通过此表单提交信息以创建新账户。
class NSignupForm extends StatelessWidget {
  const NSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            // 姓氏和名字的输入字段
            Row(children: [
              // 姓氏输入字段
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: NTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: NSizes.spaceBtwInputFields,
              ),
              // 名字输入字段
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: NTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 用户名输入字段
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: NTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 邮箱输入字段
            TextFormField(
              decoration: const InputDecoration(
                  labelText: NTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 电话号码输入字段
            TextFormField(
              decoration: const InputDecoration(
                  labelText: NTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 密码输入字段
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: NTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections,
            ),
            // 服务条款复选框
            const NTermsAndConditionCheckbox(),
            const SizedBox(height: NSizes.spaceBtwSections,),

            // 创建账户按钮
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: NColors.primary,
                ),
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(NTexts.createAccount),
              ),
            )
          ],
        ));
  }
}
