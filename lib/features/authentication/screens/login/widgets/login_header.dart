import 'package:flutter/material.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

/// [NLoginHeader] 小部件用于显示登录页面的标题部分。
/// 它包括应用的logo，登录页面的标题和副标题。
class NLoginHeader extends StatelessWidget {
  const NLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 根据当前上下文判断是否为暗黑模式，以决定使用暗黑模式还是亮色模式的logo。
    final dark = NHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 显示应用的logo，logo的选择基于是否为暗黑模式。
        Image(
          image: AssetImage(
              dark ? NImages.darkAppLogo : NImages.lightAppLogo),
          height: 150,
        ),
        // 显示登录页面的主标题，使用主题中定义的标题中等文本样式。
        Text(
          NTexts.loginTitle,
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        // 添加一个小的垂直间隔，以改善布局的视觉效果。
        const SizedBox(
          height: NSizes.sm,
        ),
        // 显示登录页面的副标题，使用主题中定义的正文文本样式。
        Text(
          NTexts.loginSubtitle,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
      ],
    );
  }
}
