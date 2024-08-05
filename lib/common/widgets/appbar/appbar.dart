import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/device/device_utility.dart';

/// 自定义AppBar类，扩展自SingleChildScrollView并实现PreferredSizeWidget接口
/// 提供了灵活的配置项，用于构建应用的顶部导航栏
class NAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// 构造函数，带有多个可选参数，用于灵活配置AppBar
  /// [title] - AppBar的标题，类型为Widget
  /// [showBackArrow] - 是否显示返回箭头图标，类型为bool
  /// [leadingIcon] - 自定义的领先图标，类型为IconData
  /// [actions] - AppBar上的操作按钮列表，类型为List<Widget>
  /// [leadingOnPressed] - 领先图标按钮的点击回调，类型为VoidCallback
  const NAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  /// 标题Widget
  final Widget? title;
  /// 是否显示返回箭头图标
  final bool? showBackArrow;
  /// 自定义的领先图标
  final IconData? leadingIcon;
  /// AppBar上的操作按钮列表
  final List<Widget>? actions;
  /// 领先图标按钮的点击回调
  final VoidCallback? leadingOnPressed;

  /// 构建AppBar的主体结构
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: NSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow!
            ? IconButton(
                onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,

        title: title,
        actions: actions,
      ),
    );
  }

  /// 获取AppBar的首选高度
  /// 该高度基于设备具体信息动态计算，以适应不同设备
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(NDeviceUtility.getAppBarHeight());
}
