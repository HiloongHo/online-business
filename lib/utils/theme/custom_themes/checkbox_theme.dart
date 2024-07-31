import 'package:flutter/material.dart';

/// 自定义复选框主题类，提供亮色和暗色主题的复选框样式配置。
class NCheckboxTheme {
  /// 私有构造函数，防止外部直接实例化对象。
  NCheckboxTheme._(); // 为了避免外部构造对象实例

  /// 亮色主题下的复选框样式配置。
  /// 使用RoundedRectangleBorder形状，设置圆角为4像素。
  /// 根据复选框的状态，选择白色或黑色作为勾选颜色，选择蓝色或透明作为填充颜色。
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// 暗色主题下的复选框样式配置。
  /// 使用与亮色主题相同的形状和颜色配置，仅适用于暗色主题环境。
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
