import 'package:flutter/material.dart';

// 导入自定义的颜色、图片字符串、尺寸常量和辅助函数
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shaps/containers/rounded_container.dart';
import 'brand_card.dart';

/// NBrandShowCase 展示品牌信息的组件。
/// 它主要展示了品牌卡片和品牌产品的顶部图片。
/// [images] 是品牌产品的图片列表。
class NBrandShowCase extends StatelessWidget {
  const NBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    // 使用自定义的圆角容器构建品牌展示区
    return NRoundedContainer(
      showBorder: true,
      borderColor: NColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: NSizes.spaceBtwItems),
      padding: const EdgeInsets.only(bottom: NSizes.spaceBtwItems),
      child: Column(
        children: [
          // 品牌卡片，展示品牌的基本信息
          const NBrandCard(showBorder: false),
          const SizedBox(
            height: NSizes.spaceBtwItems,
          ),
          // 根据图片列表构建品牌产品的顶部图片展示区
          Row(
            children: [
              for (final image in images)
                brandTopProductImageWidget(image, context)
            ],
          )
        ],
      ),
    );
  }

  /// 为品牌产品的顶部图片构建一个单独的展示Widget。
  /// [image] 是品牌产品的图片路径。
  /// [context] 是构建此Widget的上下文。
  /// 返回一个用于展示品牌产品图片的圆角容器。
  Widget brandTopProductImageWidget(String image, context) {
    // 使用圆角容器构建品牌产品图片展示区
    return Expanded(
        child: NRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(NSizes.md),
      margin: const EdgeInsets.only(right: NSizes.sm),
      backgroundColor: NHelperFunctions.isDarkMode(context)
          ? NColors.darkerGrey
          : NColors.light,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ));
  }
}
