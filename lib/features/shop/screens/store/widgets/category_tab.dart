import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/brand/brand_show_case.dart';
import 'package:online_business/common/widgets/layouts/grid_layout.dart';
import 'package:online_business/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// NCategoryTab 是一个展示产品分类标签视图的小部件。
/// 它利用自定义小部件以 ListView 格式来展示品牌和产品。
class NCategoryTab extends StatelessWidget {
  const NCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( // 创建一个 ListView 用于展示各个子组件
        shrinkWrap: true, // 允许 ListView 自身高度根据子组件的高度进行调整
        physics: const NeverScrollableScrollPhysics(), // 禁用 ListView 的滚动行为
        children: [ // ListView 中的子组件列表
          Padding( // 为整个布局提供内边距
            padding: const EdgeInsets.all(NSizes.defaultSpace), // 设置四周的内边距
            child: Column( // 使用 Column 布局来堆叠子组件
              children: [
                const NBrandShowCase(images: [ // 展示品牌图片
                  NImages.productImage4,
                  NImages.productImage1,
                  NImages.productImage9,
                ]),
                const NBrandShowCase(images: [ // 再次展示品牌图片
                  NImages.productImage4,
                  NImages.productImage1,
                  NImages.productImage9,
                ]),
                const SizedBox( // 添加一定的垂直间距
                  height: NSizes.spaceBtwItems,
                ),
                NSectionHeading( // 显示标题 "你可能喜欢"
                  title: "你可能喜欢",
                  onPressed: () {}, // 点击事件为空操作
                ),
                const SizedBox( // 添加一定的垂直间距
                  height: NSizes.spaceBtwItems,
                ),
                NGridLayout( // 以网格布局展示商品卡片
                    itemCount: 14, // 指定网格中的项目数量
                    itemBuilder: (_, index) => const NProductCardVertical()) // 构建每个网格项
              ],
            ),
          ),
        ]);
  }
}
