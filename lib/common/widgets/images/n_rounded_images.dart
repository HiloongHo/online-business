import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

/// NRoundedImage是一个自定义Widget，用于显示带圆角的图像。
/// 它可以根据提供的图像URL加载网络图像或本地资产图像，并支持自定义宽度、高度、边框、背景颜色等。
class NRoundedImage extends StatelessWidget {
  /// 构造函数NRoundedImage
  ///
  /// [width]和[height]用于设置图像的宽度和高度。
  /// [imageUrl]是必需的，用于指定图像的URL或本地资源路径。
  /// [applyImageRadius]决定是否应用圆角效果，默认为true。
  /// [isNetworkImage]指示imageUrl是否指向一个网络图像，默认为false。
  /// [border]用于设置图像边框的样式。
  /// [backgroundColor]设置背景颜色，默认为浅色。
  /// [fit]用于设置图像的填充模式，默认为 BoxFit.contain。
  /// [padding]用于设置图像内部的填充。
  /// [onPressed]是图像容器的点击回调。
  /// [borderRadius]用于设置圆角半径，默认为中等尺寸。
  const NRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.border,
    this.backgroundColor = NColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.onPressed,
    this.borderRadius = NSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius, isNetworkImage;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    // 使用GestureDetector响应点击事件
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(NSizes.md)),
        // 使用ClipRRect来实现图像的圆角效果
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            // 根据isNetworkImage的值决定加载网络图像还是本地图像
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
