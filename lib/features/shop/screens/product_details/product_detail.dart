import 'package:flutter/material.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:online_business/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';
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
    final isDark = NHelperFunctions.isDarkMode(context);
    // 返回一个 Scaffold，包含一个可滚动的区域，用于展示产品图片轮播
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                  right: NSizes.defaultSpace,
                  left: NSizes.defaultSpace,
                  bottom: NSizes.defaultSpace),
              child: Column(
                children: [
                  NRatingAndShare(),
                  NProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

