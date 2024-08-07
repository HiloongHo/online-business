import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../images/n_circular_image.dart';

/// 一个用户资料列表项小部件，包括头像、姓名、邮箱和编辑按钮。
/// 此小部件适用于列表中，提供简洁的用户资料视觉展示。
class NUserProfileTile extends StatelessWidget {
  /// 构造一个 `NUserProfileTile` 小部件。
  ///
  /// [onPressed] 当编辑按钮被按下时执行的回调函数。
  const NUserProfileTile({super.key, required this.onPressed});

  /// 当编辑按钮被按下时执行的回调函数。
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // 列表项的头部显示用户的头像。
    // 列表项的标题显示用户名。
    // 列表项的副标题显示用户的邮箱。
    // 列表项的尾部提供了一个用于修改用户信息的编辑按钮。
    return const ListTile(
      leading: NCircularImage(image: NImages.user, width: 50, height: 50, padding: 0,),
      // ...
    );
  }
}
