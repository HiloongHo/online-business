import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../brand/brand_card.dart';
import '../../layouts/grid_layout.dart';
import '../../texts/section_heading.dart';
import '../product_cards/product_card_vertical.dart';

/// 一个用于排序商品的Widget。
/// 此组件提供了一个下拉菜单供用户选择不同的排序选项，并以网格布局展示商品。
class NSortableProducts extends StatelessWidget {
  const NSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 下拉按钮表单字段，用于选择商品排序方式
        DropdownButtonFormField(
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),
        const SizedBox(
          height: NSizes.spaceBtwSections,
        ),
        // 商品网格布局
        NGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const NProductCardVertical())
      ],
    );
  }
}
