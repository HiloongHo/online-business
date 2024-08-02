import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

/// TCircularContainer类是一个预定义的圆形容器组件。
/// 它扩展了StatelessWidget，并允许通过参数自定义容器的宽度、高度、圆角、内边距和背景颜色。
/// 主要用途是创建一个具有圆形外观的通用容器，可以包含其他小部件。
class TCircularContainer extends StatelessWidget {
  /// 构造函数用于初始化TCircularContainer组件。
  /// 参数：
  /// - width: 容器的宽度，默认值为400。
  /// - height: 容器的高度，默认值为400。
  /// - radius: 定义圆角的半径，默认值为400，使得容器呈现圆形。
  /// - padding: 容器内部的填充，默认值为0，意味着没有内边距。
  /// - child: 容器内部包含的小部件，可以为null。
  /// - backgroundColor: 容器的背景颜色，默认值为白色。
  const TCircularContainer({
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = NColors.white,
    super.key,
  });

  /// 宽度、高度、圆角半径和背景颜色的属性，用于自定义容器的外观。
  final double? width, height, radius, padding;
  final Widget? child;
  final Color? backgroundColor;

  /// 重写build方法以构建Widget树。
  /// 使用Container小部件并根据提供的参数自定义其属性，如宽度、高度、圆角、内边距和背景颜色。
  /// 返回一个带有可选子小部件的圆形容器。
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!), color: backgroundColor),
      child: child,
    );
  }
}
