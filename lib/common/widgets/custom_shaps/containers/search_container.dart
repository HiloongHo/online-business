import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

/// 创建搜索容器的小部件。
///
/// [text]: 显示在搜索容器内的文本。
/// [icon]: 显示在文本前的图标（当前在构建方法中未使用）。
/// [showBackground]: 是否显示背景颜色。
/// [showBorder]: 是否显示边框。
/// [onTap]: 容器被点击时触发的回调函数。
/// [padding]: 内容与容器边缘的距离，默认为左右两侧各`NSizes.defaultSpace`。
class NSearchContainer extends StatelessWidget {
  const NSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: NSizes.defaultSpace),
  });

  final String? text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    // 确定当前是否为深色模式。
    final dark = NHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: NDeviceUtility.getScreenWidth(context),
          padding: const EdgeInsets.all(NSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? NColors.dark
                    : NColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(NSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: NColors.grey) : null,
          ),
          child: Row(
            children: [
              // 显示搜索图标。
              const Icon(
                Iconsax.search_normal,
                color: NColors.darkerGrey,
              ),
              const SizedBox(
                width: NSizes.spaceBtwItems,
              ),
              // 显示文本，文本样式根据当前上下文的主题进行适配。
              Text(
                text!,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
