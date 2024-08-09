import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/n_rounded_image.dart';
import '../../texts/n_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class NCartItem extends StatelessWidget {
  const NCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NRoundedImage(
          imageUrl: NImages.productImage12,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(NSizes.sm),
          backgroundColor: NHelperFunctions.isDarkMode(context)
              ? NColors.darkerGrey
              : NColors.light,
        ),
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NBrandTitleTextWithVerifiedIcon(title: "Nike"),
            const Flexible(
                child: NProductTitleText(
              title: "Black Sports Shoes",
              maxLines: 1,
            )),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '颜色 ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: '尺码 ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'UK 38 ', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        )
      ],
    );
  }
}
