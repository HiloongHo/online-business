import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/colors.dart';

/// 定义了用于UI组件的阴影样式
class NShadowsStyle {
  /// 用于产品卡片的垂直阴影效果
  /// [color] 设置阴影颜色为淡灰色，并有透明度
  /// [blurRadius] 模糊半径，用于控制阴影的模糊程度
  /// [spreadRadius] 扩散半径，用于控制阴影的扩散程度
  /// [offset] 阴影的偏移量，这里设置为在Y轴上偏移2像素
  static final verticalProductShadow = BoxShadow(
    color: NColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  /// 用于产品卡片的水平阴影效果
  /// [color] 设置阴影颜色为淡灰色，并有透明度
  /// [blurRadius] 模糊半径，用于控制阴影的模糊程度
  /// [spreadRadius] 扩散半径，用于控制阴影的扩散程度
  /// [offset] 阴影的偏移量，这里设置为在Y轴上偏移2像素
  static final horizontalProductShadow = BoxShadow(
      color: NColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}
