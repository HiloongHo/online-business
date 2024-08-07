import 'package:flutter/material.dart';
// 导入自定义图像组件
import 'package:online_business/common/widgets/images/n_circular_image.dart';
// 导入自定义品牌文本组件
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
// 导入自定义产品价格文本组件
import 'package:online_business/common/widgets/texts/product_price_text.dart';
// 导入自定义产品标题文本组件
import 'package:online_business/common/widgets/texts/product_title_text.dart';
// 导入应用常量和枚举
import 'package:online_business/utils/constants/enums.dart';
import 'package:online_business/utils/constants/image_strings.dart';
// 导入辅助函数
import 'package:online_business/utils/helpers/helper_functions.dart';

// 导入自定义容器组件
import '../../../../../common/widgets/custom_shaps/containers/rounded_container.dart';
// 导入应用颜色常量
import '../../../../../utils/constants/colors.dart';
// 导入应用尺寸常量
import '../../../../../utils/constants/sizes.dart';

/// `NProductMetaData`组件展示产品元数据，如折扣、价格、状态和品牌信息。
/// 它是`StatelessWidget`的一个实现。
class NProductMetaData extends StatelessWidget {
  const NProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    // 检查当前是否为暗黑模式
    final darkMode = NHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 优惠百分比展示区域
        Row(
          children: [
            // 一个带有背景色的圆角容器，用于展示折扣百分比
            NRoundedContainer(
              radius: NSizes.sm,
              backgroundColor: NColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: NSizes.sm, vertical: NSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            // 优惠后的价格和原价展示
            const SizedBox(
              height: NSizes.spaceBtwItems,
            ),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            // 当前产品价格展示
            const NProductPriceText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),
        // 产品标题
        const SizedBox(
          height: NSizes.spaceBtwItems / 1.5,
        ),
        const NProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(
          height: NSizes.spaceBtwItems / 1.5,
        ),
        // 产品状态展示
        Row(
          children: [
            const NProductTitleText(title: "Status"),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems / 1.5,
        ),
        // 品牌图标和名称展示
        Row(
          children: [
            // 品牌图标的圆形图像
            NCircularImage(
              image: NImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? NColors.white : NColors.black,
            ),
            // 品牌名称和认证图标
            const NBrandTitleTextWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
