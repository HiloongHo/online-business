import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 一个表示个人资料菜单项的小部件，用于导航或设置菜单。
/// 它显示标题、对应的值以及指示导航方向的图标。
/// 此小部件设计为可在应用程序中不同部分重复使用的组件，适用于需要个人资料相关选项的地方。
///
/// 参数:
/// - `icon`: 显示在菜单项右侧的图标，指示导航的方向。默认为 `Iconsax.arrow_right_34`。
/// - `onPressed`: 当菜单项被点击时触发的回调函数。
/// - `title`: 标题文本。
/// - `value`: 对应标题的值。
///
/// 返回值:
/// - 返回一个 `GestureDetector` 小部件，当用户点击时执行 `onPressed` 函数，并展示包含标题、值和图标的布局。
class NProfileMenu extends StatelessWidget {
  const NProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final IconData icon; // 图标
  final VoidCallback onPressed; // 点击事件回调
  final String title; // 标题
  final String value; // 值

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: NSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )),
            const Expanded(
                child: Icon(
              Iconsax.arrow_right_34,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
