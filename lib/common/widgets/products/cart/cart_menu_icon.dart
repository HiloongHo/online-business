import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

/// 购物车计数器图标组件
/// 该组件显示一个购物袋图标，右上角有一个红色的数字标签，表示购物车中的物品数量
///
/// [iconColor] 用于自定义图标的颜色
/// [onPressed] 是当图标被按下时执行的回调函数
class NCartCounterIcon extends StatelessWidget {
  const NCartCounterIcon({
    super.key, this.iconColor, required this.onPressed,
  });

  /// 可选参数，用于设置图标的颜色
  final Color? iconColor;

  /// 必需参数，当图标按钮被按下时触发
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // 使用Stack来叠加图标和计数器
    return Stack(children: [
      // IconButton用于响应用户的点击事件
      IconButton(
        onPressed: onPressed,
        icon:  Icon(
          Iconsax.shopping_bag,
          color: iconColor,
        ),
      ),
      // 使用Positioned来精确定位计数器的位置
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          // 使用BoxDecoration来设置计数器的样式
          decoration: BoxDecoration(
              color: NColors.black,
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              "3",
              // 通过Theme.of(context).textTheme.labelLarge!来应用主题样式，并自定义颜色和字体大小
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(
                  color: NColors.white,
                  fontSizeFactor: 0.8),
            ),
          ),
        ),
      )
    ]);
  }
}
