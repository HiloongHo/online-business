import 'package:flutter/material.dart';

// 导入自定义颜色常量
import '../../../utils/constants/colors.dart';
// 导入自定义尺寸常量
import '../../../utils/constants/sizes.dart';
// 导入辅助函数
import '../../../utils/helpers/helper_functions.dart';

/// NCircularImage是一个自定义Widget，用于显示一个圆形的图像
/// 它可以加载本地或网络图像，并支持图像的填充模式、大小、边距以及叠加颜色等自定义选项
class NCircularImage extends StatelessWidget {
  /// 构造函数接受图像的各种配置参数
  const NCircularImage({
    super.key,
    this.fit = BoxFit.cover, // 图像填充模式，默认为覆盖
    required this.image, // 图像的网络路径或本地资源名，必须提供
    this.width = 56, // 图像的宽度，默认为56
    this.height = 56, // 图像的高度，默认为56
    this.padding = NSizes.sm, // 图像的内边距，默认为小尺寸
    this.isNetworkImage = false, // 是否是网络图像，默认为false
    this.overlayColor, // 图像的叠加颜色，可选
    this.backgroundColor, // 背景颜色，可选
  });

  final BoxFit? fit; // 图像的填充模式
  final String image; // 图像的路径或资源名
  final double width, height, padding; // 图像的宽度、高度和内边距
  final bool isNetworkImage; // 是否是网络图像
  final Color? overlayColor, backgroundColor; // 图像的叠加颜色和背景颜色

  @override
  Widget build(BuildContext context) {
    // 构建图像容器
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (NHelperFunctions.isDarkMode(context)
                ? NColors.black
                : NColors.white), // 如果未提供背景色，则根据暗黑模式状态决定背景色
        borderRadius: BorderRadius.circular(100), // 圆角设置，实现圆形效果
      ),
      child: Center(
        child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image) // 如果是网络图像，则使用网络图像
                : AssetImage(image) as ImageProvider, // 否则使用本地资源
            color: overlayColor), // 应用叠加颜色
      ),
    );
  }
}
