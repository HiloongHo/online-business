import 'package:flutter/material.dart';

/// NChipTheme 类用于定义两种主题下的Chip样式：轻量主题和暗黑主题。
class NChipTheme {
  /// 私有构造函数，防止外部实例化此类。
  NChipTheme._();

  /// 轻量主题下的Chip样式配置。
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  /// 暗黑主题下的Chip样式配置。
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
