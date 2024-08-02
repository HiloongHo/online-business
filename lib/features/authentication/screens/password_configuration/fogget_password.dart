import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

/// 忘记密码页面
///
/// 此页面允许用户输入他们的电子邮件地址，以便接收重置密码的指示。
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              NTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            Text(
              NTexts.forgotPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: NTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: NColors.primary,
                  ),
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(NTexts.submit),
                )),
          ],
        ),
      ),
    );
  }
}
