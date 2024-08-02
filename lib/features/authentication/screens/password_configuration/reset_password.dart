import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/constants/text_strings.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image:  const AssetImage(NImages.deliveredEmailIllustration),
              width: NHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            Text(
              NTexts.changePasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            Text(
              NTexts.changePasswordSubtitle,
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
                  onPressed: (){},
                  child: const Text(NTexts.done)),
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: (){},
                  child: const Text(NTexts.resendEmail)),
            ),
          ],
        ),),
      ),
    );
  }
}
