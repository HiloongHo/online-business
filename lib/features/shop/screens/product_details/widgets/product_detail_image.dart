import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shaps/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/n_circlular_icon.dart';
import '../../../../../common/widgets/images/n_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

/// 用于显示带有曲线边缘设计的产品图片滑块的小部件。
class NProductImageSlider extends StatelessWidget {
  const NProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 判断设备是否处于深色模式。
    final isDark = NHelperFunctions.isDarkMode(context);
    // 返回一个包含主要产品图片和一系列较小图片预览的复合小部件。
    return NCurvedEdgeWidget(
      child: Container(
        // 根据深色模式设置背景颜色。
        color: isDark ? NColors.darkerGrey : NColors.light,
        // 使用 Stack 小部件来堆叠多个子小部件。
        child: Stack(
          children: [
            // 显示主要的产品图片。
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(NSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(NImages.productImage12))),
              ),
            ),
            // 在底部显示一系列产品图片预览。
            Positioned(
              right: 0,
              bottom: 30,
              left: NSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                // 构建水平方向的图片预览列表视图。
                child: ListView.separated(
                  itemBuilder: (_, index) => NRoundedImage(
                      width: 80,
                      backgroundColor: isDark ? NColors.dark : NColors.white,
                      border: Border.all(color: NColors.primary),
                      padding: const EdgeInsets.all(NSizes.sm),
                      imageUrl: NImages.productImage12),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: NSizes.spaceBtwItems,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),
            // 在顶部显示带有返回箭头和心形图标的 AppBar。
            const NAppBar(
              showBackArrow: true,
              actions: [
                NCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
