import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/brand/brand_card.dart';
import 'package:online_business/common/widgets/layouts/grid_layout.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/features/shop/screens/brand/brand_products.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 全部品牌页面
class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        title: Text('品牌'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              const NSectionHeading(
                title: "Brands",
                showActionButton: false,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              /// 品牌网格布局
              NGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => NBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
