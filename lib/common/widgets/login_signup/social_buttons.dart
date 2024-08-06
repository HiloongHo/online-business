import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

/// 一个提供社交媒体登录按钮的Widget类。
/// 目前支持Google和Facebook。
class NSocialButtons extends StatelessWidget {
  const NSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 将社交媒体登录按钮按行排列，并居中显示。
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 包含Google登录按钮的容器。
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: NColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: NSizes.iconMd,
              height: NSizes.iconMd,
              image: AssetImage(NImages.google),
            ),
          ),
        ),
        // 用于分隔两个按钮的空间。
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        // 包含Facebook登录按钮的容器。
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: NColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: NSizes.iconMd,
              height: NSizes.iconMd,
              image: AssetImage(NImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
