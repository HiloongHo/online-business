import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/n_circlular_icon.dart';

class NProductQuantityWithAddRemoveButton extends StatelessWidget {
  const NProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        NCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: NSizes.md,
          color: NHelperFunctions.isDarkMode(context)
              ? NColors.white
              : NColors.black,
          backgroundColor: NHelperFunctions.isDarkMode(context)
              ? NColors.darkerGrey
              : NColors.light,
        ),
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        const NCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: NSizes.md,
          color: NColors.white,
          backgroundColor: NColors.primary,
        )
      ],
    );
  }
}
