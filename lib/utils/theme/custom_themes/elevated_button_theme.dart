import 'package:flutter/material.dart';

/// `NElevatedButtonTheme` 类用于定义两种主题下的`ElevatedButton`样式：亮主题和暗主题。
class NElevatedButtonTheme {
  /// 私有构造函数，防止外部实例化。
  NElevatedButtonTheme._();

  /// 亮主题下的`ElevatedButton`样式配置。
  ///
  /// 该样式定义了按钮在亮主题环境下的各种视觉属性，如背景色、文字颜色、边框等。
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, // 按钮的阴影高度，设置为0表示无阴影
      foregroundColor: Colors.white, // 文字颜色
      backgroundColor: Colors.blue, // 按钮背景色
      disabledBackgroundColor: Colors.grey, // 按钮禁用时的背景色
      disabledForegroundColor: Colors.grey, // 按钮禁用时的文字颜色
      side: const BorderSide(color: Colors.blue), // 按钮边框颜色
      padding: const EdgeInsets.symmetric(vertical: 18), // 按钮内边距
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600), // 文字样式
      shape: RoundedRectangleBorder( // 按钮形状
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  /// 暗主题下的`ElevatedButton`样式配置。
  ///
  /// 该样式定义了按钮在暗主题环境下的各种视觉属性，如背景色、文字颜色、边框等。
  /// 注意，亮主题和暗主题的样式配置在本例中是相同的，这仅是一个示例。在实际应用中，暗主题和亮主题的样式可能会有所不同。
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, // 按钮的阴影高度，设置为0表示无阴影
      foregroundColor: Colors.white, // 文字颜色
      backgroundColor: Colors.blue, // 按钮背景色
      disabledBackgroundColor: Colors.grey, // 按钮禁用时的背景色
      disabledForegroundColor: Colors.grey, // 按钮禁用时的文字颜色
      side: const BorderSide(color: Colors.blue), // 按钮边框颜色
      padding: const EdgeInsets.symmetric(vertical: 18), // 按钮内边距
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600), // 文字样式
      shape: RoundedRectangleBorder( // 按钮形状
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
