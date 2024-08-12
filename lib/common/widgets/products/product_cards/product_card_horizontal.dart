import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/images/n_rounded_image.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
import 'package:online_business/common/widgets/texts/product_title_text.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/n_circlular_icon.dart';

/// 一个水平展示的产品卡片组件。
///
/// 此组件用于水平展示产品信息，包括产品图片、品牌、标题、折扣信息以及加入购物车按钮，
/// 为用户提供直观的产品浏览体验。
///
/// 参数:
///   key: 组件的键（可选）。
/// 返回值:
///   一个 `Widget` 对象。
class NProductCardHorizontal extends StatelessWidget {
  const NProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      // 设置卡片的背景、阴影和圆角
      decoration: BoxDecoration(
        boxShadow: [NShadowsStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(NSizes.productImageRadius),
        color: dark ? NColors.darkerGrey : NColors.softGrey,
      ),
      child: Row(
        children: [
          NRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(NSizes.sm),
            backgroundColor: dark ? NColors.dark : NColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: NRoundedImage(
                    imageUrl: NImages.productImage12,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: NRoundedContainer(
                    radius: NSizes.sm,
                    backgroundColor: NColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: NSizes.sm, vertical: NSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: NCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: NSizes.sm, left: NSizes.sm),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: NSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NProductTitleText(
                          title: "Green Nike Half Sleeves Shirt",
                          smallSize: true,
                        ),
                        SizedBox(
                          height: NSizes.spaceBtwItems / 2,
                        ),
                        NBrandTitleTextWithVerifiedIcon(title: "Nike"),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                          child: NProductTitleText(title: "256.0 - 25689.6")),
                      Container(
                        decoration: const BoxDecoration(
                            color: NColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(NSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    NSizes.productImageRadius))),
                        child: const SizedBox(
                          width: NSizes.iconLg * 1.2,
                          height: NSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: NColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
