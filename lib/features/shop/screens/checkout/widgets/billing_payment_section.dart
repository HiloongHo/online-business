import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

class NBillingPaymentSection extends StatelessWidget {
  const NBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        NSectionHeading(title: "支付方式", buttonTitle: "更改", onPressed: () {}),
        const SizedBox(
          height: NSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            NRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? NColors.light : NColors.white,
              padding: const EdgeInsets.all(NSizes.sm),
              child: const Image(
                image: AssetImage(NImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: NSizes.spaceBtwItems / 2,),
            Text("Paypal",style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
