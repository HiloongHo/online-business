import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

/// NGridLayout是一个用于展示网格布局的Widget。
/// 它继承自StatelessWidget，用于在不可滚动的条件下展示固定数量的子项。
/// 主要用于需要固定网格布局的场景，比如商品展示、图库等。
class NGridLayout extends StatelessWidget {
  /// 构造函数，用于创建NGridLayout实例。
  ///
  /// [itemCount] 参数是必须的，用于指定网格中的子项数量。
  /// [mainAxisExtent] 参数是可选的，用于指定主轴上每个子项的长度，默认值是288。
  /// [itemBuilder] 参数是必须的，是一个回调函数，用于生成每个子项的Widget。
  const NGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  /// 网格中子项的数量。
  final int itemCount;

  /// 主轴上每个子项的长度，如果为null，则使用默认值。
  final double? mainAxisExtent;

  /// 用于生成每个子项的回调函数。
  /// [BuildContext] 是Flutter框架提供的上下文对象。
  /// [int] 是子项的索引。
  final Widget? Function(BuildContext, int) itemBuilder;

  /// 重写build方法，返回一个GridView.builder widget。
  ///
  /// 使用GridView.builder可以动态生成网格布局，根据[itemCount]和[itemBuilder]参数来展示子项。
  /// [ itemCount ] 用于指定需要展示的子项数量。
  /// [ shrinkWrap ] 设置为true，使GridView自身不可滚动，但其子项可以滚动。
  /// [ padding ] 设置为EdgeInsets.zero，网格布局内部不添加额外的边距。
  /// [ physics ] 使用NeverScrollableScrollPhysics，使GridView自身不可滚动。
  /// [ gridDelegate ] 用于配置网格的布局，这里使用SliverGridDelegateWithFixedCrossAxisCount指定每行2个子项。
  /// [ itemBuilder ] 用于生成每个子项，通过[itemBuilder]回调函数实现。
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: NSizes.gridViewSpacing,
            crossAxisSpacing: NSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
