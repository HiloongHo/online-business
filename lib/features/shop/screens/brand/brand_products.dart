import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/brand/brand_card.dart';
import 'package:online_business/common/widgets/products/sortable/sortable_products.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 品牌产品页面，展示特定品牌的商品列表。
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用 Scaffold 构建基本页面结构，包含一个自定义的 App Bar 和一个可以滚动的 body 区域。
    return const Scaffold(
      // 自定义的 App Bar，显示品牌名称。
      appBar: NAppBar(
        title: Text("Nike"),
      ),
      // 可以滚动的 body 区域，包含一系列商品相关的 Widget。
      body: SingleChildScrollView(
        child: Padding(
          // 为页面内容添加间距，提高用户体验。
          padding: EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            // 页面内容采用垂直布局，包括品牌卡片和可排序的商品列表。
            children: [
              // 显示品牌相关信息的卡片，增加页面的交互性和信息丰富度。
              NBrandCard(showBorder: true),
              // 为品牌卡片和商品列表之间添加间距。
              SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              // 可以通过用户交互来排序商品的列表，提高商品浏览的灵活性。
              NSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
