import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// NRoundedContainer是一个自定义的圆角容器类，继承自StatelessWidget。
/// 它提供了一些可配置的参数，如宽度、高度、圆角、边框和填充等，用于灵活地创建不同样式的圆角容器。
class NRoundedContainer extends StatelessWidget {
  /// 构造函数NRoundedContainer，初始化圆角容器的属性。
  /// 参数:
  /// - width: 容器的宽度。
  /// - height: 容器的高度。
  /// - radius: 容器的圆角半径，默认值为NSizes.cardRadiusLg。
  /// - child: 容器内部的子组件。
  /// - showBorder: 是否显示边框，默认值为false。
  /// - borderColor: 边框的颜色，默认值为NColors.borderPrimary。
  /// - backgroundColor: 背景颜色，默认值为NColors.white。
  /// - padding: 容器内部的填充。
  /// - margin: 容器外部的边距。
  const NRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = NSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = NColors.borderPrimary,
      this.backgroundColor = NColors.white,
      this.padding,
      this.margin});

  /// 宽度和高度是圆角容器的尺寸参数，可以为null，表示不设置具体尺寸。
  final double? width, height;
  /// radius定义了圆角的半径，用于创建圆角效果。
  final double radius;
  /// child是圆角容器内部的子组件，可以为null。
  final Widget? child;
  /// showBorder用于控制是否显示圆角容器的边框。
  final bool showBorder;
  /// borderColor定义了边框的颜色。
  final Color borderColor;
  /// backgroundColor定义了背景颜色。
  final Color backgroundColor;
  /// padding和margin分别定义了圆角容器内部和外部的间距。
  final EdgeInsetsGeometry? padding, margin;

  /// 重写build方法，构建圆角容器的UI。
  /// 根据传入的参数配置Container组件的属性，如颜色、圆角、边框等。
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
