import 'package:flutter/material.dart';

/// `NProductTitleText` 组件用于显示产品标题文本。
/// 它允许通过参数自定义文本大小、最大行数和对齐方式等。
class NProductTitleText extends StatelessWidget {
  /// 构建 `NProductTitleText` 组件。
  ///
  /// 参数:
  /// - `title`: 必需，要显示的文本标题。
  /// - `smallSize`: 可选，默认为 `false`，决定文本的大小。
  /// - `maxLines`: 可选，默认为 2，文本的最大显示行数。
  /// - `textAlign`: 可选，默认为 `TextAlign.left`，文本的对齐方式。
  const NProductTitleText(
      {super.key,
      required this.title,
      this.smallSize = false,
      this.maxLines = 2,
      this.textAlign = TextAlign.left});

  /// 文本标题内容。
  final String title;

  /// 决定是否使用较小的文本尺寸。
  final bool smallSize;

  /// 文本的最大显示行数。
  final int maxLines;

  /// 文本的对齐方式。
  final TextAlign? textAlign;

  /// 构建文本显示的 `Text` 组件。
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
