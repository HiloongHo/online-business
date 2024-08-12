import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/utils/constants/sizes.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

/// 全部产品页面
///
/// 此页面展示所有热门产品，并提供排序功能。
/// 使用了自定义的AppBar设计，并在页面主体部分使用了可排序的产品列表组件。
class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NAppBar(
        title: Text("Popular Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(NSizes.defaultSpace),
          child: NSortableProducts(),
        ),
      ),
    );
  }
}
