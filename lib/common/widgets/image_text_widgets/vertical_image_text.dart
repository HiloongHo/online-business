import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

/// NVerticalImageText 是一个 StatelessWidget，用于垂直显示图像和文本。
/// 适用于创建需要同时展示图像和文本的统一 UI 组件，如列表项或按钮等。
///
/// 参数:
/// - image: 图像路径，必需。
/// - title: 文本内容，必需。
/// - textColor: 文本颜色，默认为白色。
/// - backgroundColor: 背景颜色，默认为白色。
/// - onTap: 当组件被点击时触发的回调函数，可选。
class NVerticalImageText extends StatelessWidget {
  const NVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = NColors.white,
    this.backgroundColor = NColors.white,
    this.onTap,
  });

  /// 图像路径
  final String image;

  /// 文本内容
  final String title;

  /// 文本颜色
  final Color textColor;

  /// 背景颜色
  final Color? backgroundColor;

  /// 点击回调函数
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: NSizes.spaceBtwItems),
        child: Column(
          children: [
            // 定义图像容器
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(NSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (NHelperFunctions.isDarkMode(context)
                          ? NColors.black
                          : NColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: NHelperFunctions.isDarkMode(context)
                      ? NColors.light
                      : NColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: NSizes.spaceBtwItems / 2,
            ),
            // 定义文本容器
            SizedBox(
                width: 55,
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
