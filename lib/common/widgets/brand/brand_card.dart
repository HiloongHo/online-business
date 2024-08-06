import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/images/n_circular_image.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/enums.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

class NBrandCard extends StatelessWidget {
  const NBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: NRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(NSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: NCircularImage(
              image: NImages.clothIcon,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor: dark ? NColors.white : NColors.black,
            )),
            const SizedBox(
              width: NSizes.spaceBtwItems / 2,
            ),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NBrandTitleTextWithVerifiedIcon(
                  title: "Nike",
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  "25类产品",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
