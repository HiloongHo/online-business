import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/bottom_add_to_cart_widgets.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

import '../product_reviews/product_reviews.dart';

/// 产品详情页面
///
/// [ProductDetail] 是一个 StatelessWidget，用于展示产品的详细信息。
/// 它主要包含一个产品图片轮播组件。
class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  /// 构建方法，用于生成 ProductDetail 页面的 UI。
  ///
  /// 根据当前的暗黑模式状态，决定整体 UI 的配色方案。
  /// 返回一个 Scaffold，包含一个可滚动的区域，用于展示产品图片轮播。
  @override
  Widget build(BuildContext context) {
    // 检查当前是否为暗黑模式
    // 返回一个 Scaffold，包含一个可滚动的区域，用于展示产品图片轮播
    return Scaffold(
      bottomNavigationBar: const NBottomToAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
             const NProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: NSizes.defaultSpace,
                  left: NSizes.defaultSpace,
                  bottom: NSizes.defaultSpace),
              child: Column(
                children: [
                  const NRatingAndShare(),
                  const NProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("CheckOut"),
                    ),
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  const NSectionHeading(
                    title: "描述",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but  I am",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show More",
                    trimExpandedText: "Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: NSizes.spaceBtwItems,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const NSectionHeading(
                        title: "Reviews(1999)",
                         showActionButton: false,
                  ),
                       IconButton(onPressed: () => Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                     ],
                   ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
