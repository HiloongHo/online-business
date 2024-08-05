import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

/// A widget for creating a search container.
///
/// [text]: The text displayed inside the search container.
/// [icon]: The icon displayed in front of the text (currently not used in the build method).
/// [showBackground]: Whether to display a background color.
/// [showBorder]: Whether to display a border.
/// [onTap]: The callback function triggered when the container is tapped.
class NSearchContainer extends StatelessWidget {
  const NSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String? text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // Determine if the current mode is dark mode.
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: NSizes.defaultSpace),
        child: Container(
          width: NDeviceUtility.getScreenWidth(context),
          padding: const EdgeInsets.all(NSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? NColors.dark
                    : NColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(NSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: NColors.grey) : null,
          ),
          child: Row(
            children: [
              // Display a search icon.
              const Icon(
                Iconsax.search_normal,
                color: NColors.darkerGrey,
              ),
              const SizedBox(
                width: NSizes.spaceBtwItems,
              ),
              // Display text, the text style adapts to the theme of the current context.
              Text(
                text!,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
