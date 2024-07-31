import 'package:flutter/material.dart';

/// 提供了两种主题风格的BottomSheet配置：浅色和深色。
class NBottomSheetTheme {
  /// 私有构造函数，防止外部实例化此类。
  NBottomSheetTheme._();

  /// 浅色主题的BottomSheet配置。
  ///
  /// 包括如下属性：
  /// - 显示拖动手柄
  /// - 背景颜色为白色
  /// - 模态背景颜色为白色
  /// - 约束条件为最小宽度为无穷大
  /// - 形状为圆角矩形，圆角半径为16
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  /// 深色主题的BottomSheet配置。
  ///
  /// 包括如下属性：
  /// - 显示拖动手柄
  /// - 背景颜色为黑色
  /// - 模态背景颜色为黑色
  /// - 约束条件为最小宽度为无穷大
  /// - 形状为圆角矩形，圆角半径为16
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}

