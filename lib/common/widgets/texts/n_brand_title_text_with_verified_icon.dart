import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text.dart';
import 'package:online_business/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';

/// `NBrandTitleTextWithVerifiedIcon` 组件扩展了 StatelessWidget，用于显示一个带有验证图标的标题文本。
/// 该组件主要用于标识已验证的商家或品牌。
class NBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const NBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = NColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  /// [title] - 显示在文本上的标题内容。
  final String title;

  /// [maxLines] - 文本的最大行数，默认为1，即单行显示。
  final int maxLines;

  /// [textColor] - 文本的颜色，如果未提供，则使用默认颜色。
  final Color? textColor;

  /// [iconColor] - 验证图标的颜色，默认为NColors.primary（主色）。
  final Color? iconColor;

  /// [textAlign] - 文本的对齐方式，默认为居中对齐。
  final TextAlign textAlign;

  /// [brandTextSize] - 文本的大小，默认为小（TextSizes.small）。
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    // 使用Row小部件将标题文本和验证图标水平排列。
    // Flexible小部件用于确保文本能够根据可用空间调整大小。
    // Icon小部件用于显示验证图标。
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: NBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          width: NSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: NSizes.iconXs,
        )
      ],
    );
  }
}
