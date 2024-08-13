import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 一个自定义的动画加载器小部件，用于显示加载动画和相关文本。
/// 可以选择性地显示一个操作按钮，用于在加载失败时让用户尝试重新加载。
///
/// [text] - 显示在动画下方的文本。
/// [animation] - 动画文件的路径。
/// [showAction] - 是否显示操作按钮，默认为false。
/// [actionText] - 操作按钮上的文本，如果showAction为true，则此参数必填。
/// [onActionPressed] - 操作按钮被按下时的回调函数，如果showAction为true，则此参数必填。
class NAnimationLoaderWidget extends StatelessWidget {
  const NAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 使用Lottie播放动画，动画文件宽度设置为屏幕宽度的80%
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(
            height: NSizes.defaultSpace,
          ),
          // 显示文本，使用Flutter的TextStyle进行样式设置，居中对齐
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: NSizes.defaultSpace,
          ),
          // 根据showAction的值决定是否显示操作按钮
          // 如果showAction为true，则显示一个带有指定文本和回调的按钮
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: NColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: NColors.light),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
