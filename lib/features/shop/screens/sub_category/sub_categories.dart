import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/images/n_rounded_image.dart';
import 'package:online_business/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 运动类别的屏幕页面，展示运动相关的商品分类和推荐
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用Scaffold搭建页面基本结构，包括应用栏和身体部分
    return Scaffold(
      // 设置应用栏，标题为"运动类"，显示返回箭头
      appBar: const NAppBar(
        title: Text("运动类"),
        showBackArrow: true,
      ),
      // 页面主体部分，包含轮播图、分类标题和商品卡片
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              // 显示轮播图
              const NRoundedImage(
                imageUrl: NImages.banner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              // 分隔线，用于区分轮播图和下面的内容
              const SizedBox(height: NSizes.spaceBtwSections),
              // 运动短袖分类区域
              Column(
                children: [
                  // 分类标题
                  NSectionHeading(
                    title: "运动短袖",
                    onPressed: () {},
                  ),
                  // 分隔线，用于区分标题和商品卡片
                  const SizedBox(
                    height: NSizes.spaceBtwItems / 2,
                  ),
                  // 水平滚动的商品卡片列表
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const NProductCardHorizontal(),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: NSizes.spaceBtwItems,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
