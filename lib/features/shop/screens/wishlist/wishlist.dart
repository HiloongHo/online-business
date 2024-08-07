import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/icons/n_circlular_icon.dart';
import 'package:online_business/common/widgets/layouts/grid_layout.dart';
import 'package:online_business/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_business/features/shop/screens/home/home.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// FavoriteScreen是一个展示用户收藏商品的页面。
/// 它继承自StatelessWidget，不需要状态管理。
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  /// 构建FavoriteScreen的UI结构。
  ///
  /// 返回一个Scaffold，包含一个带有标题和操作按钮的AppBar，以及一个作为主体的可滚动列表视图，
  /// 主体中展示了一个商品网格布局。
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NAppBar(
        title: Text("心愿单", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          NCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              NGridLayout(itemCount: 6, itemBuilder: (_,index) => const NProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
