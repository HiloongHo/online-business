import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/common/widgets/success_screen/success_screen.dart';
import 'package:online_business/features/authentication/screens/login/login.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/constants/text_strings.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

/// 邮箱验证屏幕
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(NImages.deliveredEmailIllustration),
                width: NHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                NTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                '2625587747@qq.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                NTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NColors.primary),
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: NImages.staticSuccessIllustration,
                            title: NTexts.yourAccountCreatedTitle,
                            subtitle: NTexts.yourAccountCreatedSubtitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(NTexts.nContinue))),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(NTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
