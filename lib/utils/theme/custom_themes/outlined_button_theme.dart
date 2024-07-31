import 'package:flutter/material.dart';

/* 定义一个名为NOutlinedButtonTheme的类，用于提供亮色和暗色主题下的OutlineButton样式。 */
/* -- 亮暗轮廓按钮主题  -- */
class NOutlinedButtonTheme {
  /* 静态常量lightOutlinedButtonTheme代表亮色主题下的OutlineButton样式。 */
  /* 它使用了自定义的样式设置，包括无阴影、黑色前景色、蓝色边框、特定的文本样式和形状。 */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  /* 静态常量darkOutlinedButtonTheme代表暗色主题下的OutlineButton样式。 */
  /* 它使用了自定义的样式设置，包括白色前景色、蓝色Accent边框、特定的文本样式和形状。 */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
