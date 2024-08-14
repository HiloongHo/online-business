import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/authentication/controllers/signup/signup_controller.dart';
import 'package:online_business/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';
import 'package:online_business/utils/validators/validation.dart';

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
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            // 姓氏和名字的输入字段
            Row(children: [
              // 姓氏输入字段
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      NValidation.validateEmptyText("姓氏", value),
                  controller: controller.lastName,
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
                  validator: (value) =>
                      NValidation.validateEmptyText("名字", value),
                  controller: controller.firstName,
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
              validator: (value) => NValidation.validateEmptyText("用户名", value),
              controller: controller.userName,
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
              validator: (value) => NValidation.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(
                  labelText: NTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 电话号码输入字段
            TextFormField(
              validator: (value) => NValidation.validatePhoneNumber(value),
              controller: controller.phoneNumber,
              decoration: const InputDecoration(
                  labelText: NTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwInputFields,
            ),
            // 密码输入字段
            Obx(
              () => TextFormField(
                validator: (value) => NValidation.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: NTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye)),
                ),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections,
            ),
            // 服务条款复选框
            const NTermsAndConditionCheckbox(),
            const SizedBox(
              height: NSizes.spaceBtwSections,
            ),

            // 创建账户按钮
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: NColors.primary,
                ),
                onPressed: () => controller.signup(),
                child: const Text(NTexts.createAccount),
              ),
            )
          ],
        ));
  }
}
