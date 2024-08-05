import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/features/shop/controllers/home_controller.dart';
import 'package:online_business/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shaps/containers/circular_container.dart';
import '../../../../../common/widgets/images/n_rounded_images.dart';
import '../../../../../utils/constants/sizes.dart';

/// 广告轮播组件
///
/// 此组件展示一个可以自动轮播的广告栏，支持通过传入的图片链接列表展示多张广告图片。
///
/// [banners] 参数是必须的，它是一个包含广告图片链接的字符串列表。
class NPromoSlider extends StatelessWidget {
  const NPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    // 获取HomeController实例，用于控制轮播图的页面指示器更新
    final controller = Get.put(HomeController());
    return Column(
      children: [
        // 轮播图组件，展示传入的广告图片
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) => NRoundedImage(imageUrl: url)).toList(),
        ),
        // 用于分隔轮播图和下面的页面指示器的空隙
        const SizedBox(
          height: NSizes.spaceBtwItems,
        ),
        // 页面指示器，显示当前轮播图的页面位置
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  // 每个页面指示器的容器，根据当前页面改变颜色
                  NCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? NColors.primary
                        : NColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
