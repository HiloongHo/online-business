import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

/// `NRatingAndShare` 小部件用于显示评分和分享按钮。
/// 它包含一个五星级评分和一个分享图标，评分默认为最高分，旁边显示评分的人数。
class NRatingAndShare extends StatelessWidget {
  const NRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 显示评分和评分人数的部分
        Row(
          children: [
            // 显示一个五角星图标，代表评分
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            // 分割图标和文本的间距
            const SizedBox(
              width: NSizes.spaceBtwItems / 2,
            ),
            // 显示评分和评分的人数
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "5.0", style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: "(199)")
            ])),
          ],
        ),
        // 分享按钮，目前未实现功能
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: NSizes.iconMd,
            ))
      ],
    );
  }
}
