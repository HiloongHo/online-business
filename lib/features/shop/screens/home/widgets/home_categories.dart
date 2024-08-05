import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

/// 新闻首页类别组件
///
/// 此组件用于展示新闻首页的各类别图标和文字，通过水平滑动的方式展示多个类别。
class NHomeCategories extends StatelessWidget {
  const NHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 设置组件的高度为80，内部使用水平滑动的ListView展示类别
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            // 使用NVerticalImageText组件展示每个类别，此处以鞋子类别为例
            return NVerticalImageText(
              image: NImages.shoeIcon,
              title: "鞋",
              onTap: () {},
            );
          }),
    );
  }
}
