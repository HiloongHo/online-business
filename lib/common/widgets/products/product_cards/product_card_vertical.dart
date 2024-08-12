import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/styles/shadows.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/images/n_rounded_image.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
import 'package:online_business/common/widgets/texts/product_title_text.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../features/shop/screens/product_details/product_detail.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/n_circlular_icon.dart';
import '../../texts/product_price_text.dart';

/// 新产品垂直卡片组件
/// 该组件用于显示一个带有产品图片和一些基本信息的垂直卡片
class NProductCardVertical extends StatelessWidget {
  const NProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取当前主题模式（暗黑或亮色）
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        // 设置卡片的背景、阴影和圆角
        decoration: BoxDecoration(
          boxShadow: [NShadowsStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(NSizes.productImageRadius),
          color: dark ? NColors.darkerGrey : NColors.white,
        ),
        child: Column(
          children: [
            // 使用圆角容器展示产品图片
            NRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(NSizes.sm),
              backgroundColor: dark ? NColors.dark : NColors.light,
              child: Stack(
                children: [
                  const NRoundedImage(
                    imageUrl: NImages.productImage7,
                    applyImageRadius: true,
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
            const SizedBox(height: NSizes.spaceBtwItems / 2),
            const Padding(
                padding: EdgeInsets.only(left: NSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NProductTitleText(
                      title: "IPhone 15 Pro Max",
                      smallSize: true,
                    ),
                    SizedBox(
                      height: NSizes.spaceBtwItems / 2,
                    ),
                    NBrandTitleTextWithVerifiedIcon(title: "IPhone"),
                  ],
                )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: NSizes.sm),
                  child: NProductPriceText(
                    price: "35.0",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          NSizes.cardRadiusMd,
                        ),
                        bottomRight:
                            Radius.circular(NSizes.productImageRadius)),
                    color: NColors.dark,
                  ),
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
    );
  }
}

