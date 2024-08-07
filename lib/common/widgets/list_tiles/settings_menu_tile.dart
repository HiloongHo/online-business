import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/colors.dart';

/// `NSettingMenuTile` 是一个用于表示设置菜单项的小部件，继承自 `StatelessWidget`。
///
/// 参数:
/// - `icon`: 显示在菜单项左侧的图标，类型为 `IconData`。
/// - `title`: 菜单项的主要标题，类型为 `String`。
/// - `subTile`: 菜单项的副标题，类型为 `String`。
/// - `trailing`: 可选参数，显示在菜单项右侧的控件，类型为 `Widget?`。
/// - `onTap`: 当用户点击此菜单项时触发的回调函数，类型为 `VoidCallback?`。

class NSettingMenuTile extends StatelessWidget {
  const NSettingMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTile,
      this.trailing,
      this.onTap});

  /// 图标
  final IconData icon;

  /// 主标题
  final String title;

  /// 副标题
  final String subTile;

  /// 右侧可选控件
  final Widget? trailing;

  /// 点击事件回调
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // 构建列表项小部件
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: NColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTile,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
