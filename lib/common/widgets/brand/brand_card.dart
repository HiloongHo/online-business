import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/images/n_circular_image.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/enums.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

/// NBrandCard 是一个用于展示品牌信息的卡片组件，支持自定义边框显示以及点击事件。
///
/// 构造函数接受两个参数：
/// - `showBorder`：布尔类型，决定是否显示卡片边框。
/// - `onTap`：可选回调函数，当卡片被点击时触发。
class NBrandCard extends StatelessWidget {
  /// 构造函数接收 `showBorder` 和 `onTap` 参数。
  const NBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  /// 是否显示边框。
  final bool showBorder;

  /// 点击卡片时的回调函数。
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // 检查当前主题是否为暗色模式。
    final dark = NHelperFunctions.isDarkMode(context);

    // 使用 GestureDetector 包裹 NRoundedContainer，以便处理点击事件。
    return GestureDetector(
      onTap: onTap,
      child: NRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(NSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 显示品牌的图标。
            Flexible(
                child: NCircularImage(
              image: NImages.clothIcon,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor: dark ? NColors.white : NColors.black,
            )),

            // 间隔空间。
            const SizedBox(width: NSizes.spaceBtwItems / 2),

            // 显示品牌名称和其他信息。
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NBrandTitleTextWithVerifiedIcon(
                  title: "Nike",
                  brandTextSize: TextSizes.large,
                ),

                // 显示品牌的产品数量。
                Text(
                  "25类产品",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
