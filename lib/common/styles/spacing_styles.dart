import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

/// 定义了一个用于样式设置的类，包含与间距相关的常量
class NSpacingStyle {
  /// 声明了一个顶部带有应用栏高度的内边距常量，用于在布局中快速应用一致的间距和布局调整
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: NSizes.appBarHeight, // 使用应用栏的高度作为顶部间距
    left: NSizes.defaultSpace, // 使用默认间距作为左边间距
    bottom: NSizes.defaultSpace, // 使用默认间距作为底部间距
    right: NSizes.defaultSpace, // 使用默认间距作为右边间距
  );
}
