import 'package:flutter/material.dart';

// 导入尺寸常量和辅助函数
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

/// 登录页面组件
///
/// 这个组件用于展示登录过程中的介绍页面，包括图片、标题和副标题。
/// 它使用了Flutter的 StatelessWidget基类。
///
/// [image] - 介绍页面的图片资源路径
/// [title] - 介绍页面的主要标题
/// [subTitle] - 介绍页面的副标题
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    // 使用EdgeInsets.all对页面内容进行内边距设置
    return Padding(
      padding: const EdgeInsets.all(NSizes.defaultSpace),
      child: Column(
        children: [
          // 使用AssetImage加载图片资源，按屏幕大小调整图片尺寸
          Image(
              width: NHelperFunctions.screenWidth() * 0.8,
              height: NHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          // 展示标题文本，使用当前主题的headlineLarge样式，居中对齐
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          // 添加垂直空间，用于分离标题和副标题
          const SizedBox(
            height: NSizes.spaceBtwItems,
          ),
          // 展示副标题文本，使用当前主题的bodyMedium样式，居中对齐
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
