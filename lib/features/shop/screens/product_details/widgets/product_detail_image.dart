import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shaps/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/n_circlular_icon.dart';
import '../../../../../common/widgets/images/n_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

/// A widget for displaying a product image slider with a curved edge design.
class NProductImageSlider extends StatelessWidget {
  const NProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Determine if the device is in dark mode.
    final isDark = NHelperFunctions.isDarkMode(context);
    // Return a widget that contains a product image and a series of smaller image previews.
    return NCurvedEdgeWidget(
      child: Container(
        // Set the background color based on dark mode.
        color: isDark ? NColors.darkerGrey : NColors.light,
        // Use Stack to overlay multiple widgets.
        child: Stack(
          children: [
            // Display the main product image.
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(NSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(NImages.productImage12))),
              ),
            ),
            // Display a list of product image previews at the bottom.
            Positioned(
              right: 0,
              bottom: 30,
              left: NSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                // Build a horizontal ListView of image previews.
                child: ListView.separated(
                  itemBuilder: (_, index) => NRoundedImage(
                      width: 80,
                      backgroundColor: isDark ? NColors.dark : NColors.white,
                      border: Border.all(color: NColors.primary),
                      padding: const EdgeInsets.all(NSizes.sm),
                      imageUrl: NImages.productImage12),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: NSizes.spaceBtwItems,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),
            // Display the AppBar at the top, with a back arrow and a heart icon.
            const NAppBar(
              showBackArrow: true,
              actions: [
                NCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
