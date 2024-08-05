import 'package:flutter/material.dart';

// 导入自定义的AppBar组件
import '../../../../../common/widgets/appbar/appbar.dart';
// 导入购物车图标组件
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
// 导入颜色常量
import '../../../../../utils/constants/colors.dart';
// 导入文本字符串常量
import '../../../../../utils/constants/text_strings.dart';

/// 定义一个NHomeAppBar类，用于在主页中显示自定义的AppBar。
/// 它继承自StatelessWidget。
class NHomeAppBar extends StatelessWidget {
  /// 构造函数，使用了命名参数以提供更灵活的使用方式。
  const NHomeAppBar({
    super.key,
  });

  /// 重写build方法，以构建UI组件树。
  @override
  Widget build(BuildContext context) {
    // 返回一个自定义的AppBar组件，包含标题和操作图标。
    return NAppBar(
      // 设置AppBar的标题为两行文本。
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 第一行文本，使用灰色显示标题。
          Text(NTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: NColors.grey)),
          // 第二行文本，使用白色显示子标题。
          Text(NTexts.homeAppbarSubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: NColors.white)),
        ],
      ),
      // 在AppBar的右侧添加一个购物车图标。
      actions: [
        NCartCounterIcon(
          onPressed: () {},
          iconColor: NColors.white,
        )
      ],
    );
  }
}
