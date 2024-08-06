import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shaps/containers/rounded_container.dart';
import 'brand_card.dart';

class NBrandShowCase extends StatelessWidget {
  const NBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return NRoundedContainer(
      showBorder: true,
      borderColor: NColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: NSizes.spaceBtwItems),
      padding: const EdgeInsets.only(bottom: NSizes.spaceBtwItems),
      child: Column(
        children: [
          const NBrandCard(showBorder: false),
          const SizedBox(
            height: NSizes.spaceBtwItems,
          ),
          Row(
            children: [
              for (final image in images)
                brandTopProductImageWidget(image, context)
            ],
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: NRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(NSizes.md),
      margin: const EdgeInsets.only(right: NSizes.sm),
      backgroundColor: NHelperFunctions.isDarkMode(context)
          ? NColors.darkerGrey
          : NColors.light,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ));
  }
}
