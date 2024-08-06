import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/brand/brand_show_case.dart';
import 'package:online_business/common/widgets/layouts/grid_layout.dart';
import 'package:online_business/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

class NCategoryTab extends StatelessWidget {
  const NCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(NSizes.defaultSpace),
            child: Column(
              children: [
                const NBrandShowCase(images: [
                  NImages.productImage4,
                  NImages.productImage1,
                  NImages.productImage9,
                ]),
                const NBrandShowCase(images: [
                  NImages.productImage4,
                  NImages.productImage1,
                  NImages.productImage9,
                ]),
                const SizedBox(
                  height: NSizes.spaceBtwItems,
                ),
                NSectionHeading(
                  title: "你可能喜欢",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: NSizes.spaceBtwItems,
                ),
                NGridLayout(
                    itemCount: 14,
                    itemBuilder: (_, index) => const NProductCardVertical())
              ],
            ),
          ),
        ]);
  }
}
