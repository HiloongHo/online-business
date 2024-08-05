import 'package:flutter/material.dart';
import 'package:online_business/common/styles/shadows.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

/// 新产品垂直卡片组件
/// 该组件用于显示一个带有产品图片和一些基本信息的垂直卡片
class NProductCardVertical extends StatelessWidget {
  const NProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取当前主题模式（暗黑或亮色）
    final dark = NHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      // 设置卡片的背景、阴影和圆角
      decoration: BoxDecoration(
        boxShadow: [NShadowsStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(NSizes.productImageRadius),
        color: dark ? NColors.darkerGrey : NColors.white,
      ),
      child: Column(
        children: [
          // 使用圆角容器展示产品图片
          NRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(NSizes.sm),
            backgroundColor: dark ? NColors.dark : NColors.light,
          )
        ],
      ),
    );
  }
}
