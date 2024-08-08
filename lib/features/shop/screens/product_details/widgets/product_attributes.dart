import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/texts/product_price_text.dart';
import 'package:online_business/common/widgets/texts/product_title_text.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        NRoundedContainer(
          padding: const EdgeInsets.all(NSizes.md),
          backgroundColor: dark ? NColors.darkerGrey : NColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const NSectionHeading(
                    title: "变化",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: NSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const NProductTitleText(
                            title: 'price：',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: NSizes.spaceBtwItems,
                          ),
                          const NProductPriceText(price: "20")
                        ],
                      ),
                      Row(
                        children: [
                          const NProductTitleText(
                            title: "Stock：",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const NProductTitleText(
                title:
                    "This is the  Description of the Product and it can go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NSectionHeading(
              title: "颜色",
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                NChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Purple',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'Grey',
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: 'White',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NSectionHeading(
              title: "尺码",
              showActionButton: false,
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                NChoiceChip(
                  text: "EU 34",
                  selected: true,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 35",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 36",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 37",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 38",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 39",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 40",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 41",
                  selected: false,
                  onSelected: (value) {},
                ),
                NChoiceChip(
                  text: "EU 42",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
