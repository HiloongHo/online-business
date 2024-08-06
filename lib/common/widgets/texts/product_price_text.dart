import 'package:flutter/material.dart';

/// 一个用于显示产品价格的文本组件，支持设置货币符号、价格、最大行数、大小和是否划线。
///
/// [currencySign] - 货币符号，默认为美元符号。
/// [price] - 产品的价格，作为字符串。
/// [maxLines] - 文本的最大行数，默认为1，即单行显示。
/// [isLarge] - 是否使用较大的文本样式，默认为false。
/// [lineThrough] - 是否在文本上划线，默认为false。
class NProductPriceText extends StatelessWidget {
  const NProductPriceText({
    super.key,
    this.currencySign = "\$",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    // 构建并返回一个包含货币符号和价格的文本组件。
    // 根据isLarge和lineThrough参数调整文本样式。
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
