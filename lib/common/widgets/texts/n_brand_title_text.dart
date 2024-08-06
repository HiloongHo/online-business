import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/enums.dart';

/// `NBrandTitleText` 组件用于显示品牌标题文本，它支持自定义标题、最大行数、文本颜色、对齐方式和文本大小。
/// 这个组件通过 `Text` 小部件渲染文本，并且能够根据屏幕密度和文本大小调整样式。
class NBrandTitleText extends StatelessWidget {
  /// 构造函数用于创建 `NBrandTitleText` 实例。
  /// - `title` 是必需的，指定要显示的文本。
  /// - `maxLines` 指定最大行数，默认为 1，即单行显示。
  /// - `color` 指定文本颜色，是可选的。
  /// - `textAlign` 指定文本对齐方式，默认为中心对齐。
  /// - `brandTextSize` 指定文本大小，默认为小。
  const NBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.color,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  /// 标题文本内容。
  final String title;

  /// 文本显示的最大行数。
  final int maxLines;

  /// 文本颜色，如果未指定，则使用默认颜色。
  final Color? color;

  /// 文本对齐方式。
  final TextAlign textAlign;

  /// 文本大小，决定了文本的样式。
  final TextSizes brandTextSize;

  /// 重写 `build` 方法以构建文本小部件。
  @override
  Widget build(BuildContext context) {
    /// 根据 `brandTextSize` 和 `color` 创建文本样式。
    /// 根据当前上下文的主题和指定的文本大小选择合适的样式，并应用指定的颜色。
    TextStyle textStyle = brandTextSize == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
        : brandTextSize == TextSizes.medium
            ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
            : brandTextSize == TextSizes.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color);

    /// 返回一个 `Text` 小部件，用于显示标题文本。
    /// - `title` 是要显示的文本内容。
    /// - `textAlign` 设置文本的对齐方式。
    /// - `overflow` 设置文本溢出时的处理方式，这里使用省略号。
    /// - `maxLines` 控制文本的最大行数。
    /// - `style` 设置文本的样式，包括颜色和大小。
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: textStyle,
    );
  }
}
