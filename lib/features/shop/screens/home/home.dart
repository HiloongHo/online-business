import 'package:flutter/material.dart';
import 'package:online_business/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shaps/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shaps/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

/// 主页屏幕组件
/// 作为应用程序的主页，使用了自定义的圆形容器来增强界面的视觉效果
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用 Scaffold 构建基本页面结构
    // 通过 SingleChildScrollView 提供垂直滚动功能
    // Column 组件用于布局页面元素
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 顶部容器，设置背景色和内边距
            // 使用 Stack 布局来叠加多个圆形容器，以实现特定的视觉效果
            const NPrimaryHeaderContainer(
              child: Column(
                children: [
                  NHomeAppBar(),
                  SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  NSearchContainer(
                    text: "搜索你想要的",
                  ),
                  SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: NSizes.defaultSpace),
                    child: Column(
                      children: [
                        NSectionHeading(
                          title: '热门类别',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: NSizes.spaceBtwItems,
                        ),
                        NHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: NSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(NSizes.defaultSpace),
              child: Column(
                children: [
                  const NPromoSlider(
                    banners: [
                      NImages.banner1,
                      NImages.banner2,
                      NImages.banner3
                    ],
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  NSectionHeading(
                    title: "热门产品",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwItems,
                  ),
                  NGridLayout(
                    itemCount: 14,
                    itemBuilder: (_, index) => const NProductCardVertical(),
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
