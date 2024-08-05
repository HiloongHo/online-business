import 'package:flutter/material.dart';

/// `NSectionHeading` 小部件，用作 UI 中的节标题。
/// 可选择性地显示操作按钮。
///
/// 参数:
/// - `textColor`: 标题文本的颜色。如果为 null，则使用默认颜色。
/// - `showActionButton`: 是否显示操作按钮。
/// - `title`: 节标题的文字内容，必填项。
/// - `buttonTitle`: 操作按钮的文字内容，默认为 "查看全部"。
/// - `onPressed`: 当操作按钮被点击时的回调方法。
class NSectionHeading extends StatelessWidget {
  const NSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = "查看全部",
    this.onPressed,
  });

  /// 文本颜色
  final Color? textColor;

  /// 是否显示操作按钮
  final bool showActionButton;

  /// 标题文字内容
  final String title;

  /// 按钮文字内容
  final String buttonTitle;

  /// 按钮点击回调
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
