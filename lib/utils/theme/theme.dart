import 'package:flutter/material.dart';
import 'package:online_business/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:online_business/utils/theme/custom_themes/appbar_theme.dart';
import 'package:online_business/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:online_business/utils/theme/custom_themes/chip_theme.dart';
import 'package:online_business/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:online_business/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:online_business/utils/theme/custom_themes/text_field_theme.dart';
import 'package:online_business/utils/theme/custom_themes/text_theme.dart';

/// 主题类，用于定义应用的亮色和暗色主题。
class NAppTheme {
  /// 私有构造函数，防止外部实例化。
  NAppTheme._();

  /// 亮色主题配置。
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: NTextTheme.lightTheme,
    chipTheme: NChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: NAppBarTheme.lightAppbarTheme,
    checkboxTheme: NCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: NBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: NElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: NOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: NTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// 暗色主题配置。
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: NTextTheme.darkTheme,
    chipTheme: NChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: NAppBarTheme.darkAppbarTheme,
    checkboxTheme: NCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: NBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: NElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: NOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: NTextFormFieldTheme.darkInputDecorationTheme,
  );
}
