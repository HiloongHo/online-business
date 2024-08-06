import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

/// 自定义圆形图标按钮组件。
///
/// 此组件用于显示一个圆形图标，并可自定义宽度、高度、尺寸、颜色、背景色以及点击回调。
/// 如果没有提供特定的背景色，它会根据设备的主题自动调整外观。
class NCircularIcon extends StatelessWidget {
  /// 构造 NCircularIcon 组件。
  ///
  /// [width] - 组件的宽度。
  /// [height] - 组件的高度。
  /// [size] - 图标的大小，默认为 `NSizes.lg`。
  /// [icon] - 要显示的图标数据，为必填项。
  /// [color] - 图标颜色。
  /// [backgroundColor] - 背景颜色。
  /// [onPressed] - 按钮被点击时的回调函数。
  const NCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = NSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size; // 组件的宽高及图标的大小
  final IconData icon; // 图标数据
  final Color? color, backgroundColor; // 图标颜色与背景颜色
  final VoidCallback? onPressed; // 按钮点击回调

  @override
  Widget build(BuildContext context) {
    // 定义组件的外观样式
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), // 圆角设置
        color: backgroundColor ??
          (NHelperFunctions.isDarkMode(context) ?
            NColors.black.withOpacity(0.9) :
            NColors.white.withOpacity(0.9)), // 根据主题确定背景颜色
      ),
      child: IconButton( // 实际的图标按钮
        onPressed: onPressed, // 设置点击事件
        icon: Icon(
          icon, // 图标数据
          color: color, // 图标颜色
          size: size, // 图标大小
        ),
      ),
    );
  }
}
