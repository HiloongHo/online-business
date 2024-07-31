import 'package:flutter/material.dart';

/// NAppBarTheme 类用于定义应用栏的主题样式。
/// 提供了两种主题：lightAppbarTheme 和 darkAppbarTheme，分别用于亮色和暗色背景下的应用栏。
class NAppBarTheme {
  /// 私有构造函数，防止外部直接实例化此类。
  NAppBarTheme._();

  /// 亮色应用栏主题配置。
  /// 该配置适用于亮色背景下的应用栏，设置了透明背景、黑色图标以及黑色标题文本。
  static const lightAppbarTheme = AppBarTheme(
    elevation: 0, // 应用栏高度为0，取消阴影效果
    centerTitle: false, // 标题居左显示
    scrolledUnderElevation: 0, // 滚动时应用栏不改变高度
    backgroundColor: Colors.transparent, // 应用栏背景色为透明
    surfaceTintColor: Colors.transparent, // 应用栏表面颜色为透明
    iconTheme: IconThemeData(color: Colors.black, size: 24), // 图标颜色为黑色，大小为24
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24), // 动作图标颜色为黑色，大小为24
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black), // 标题文本样式，字体大小18，加粗，颜色为黑色
  );

  /// 暗色应用栏主题配置。
  /// 该配置适用于暗色背景下的应用栏，设置了透明背景、白色图标以及白色标题文本。
  static const darkAppbarTheme = AppBarTheme(
    elevation: 0, // 应用栏高度为0，取消阴影效果
    centerTitle: false, // 标题居左显示
    scrolledUnderElevation: 0, // 滚动时应用栏不改变高度
    backgroundColor: Colors.transparent, // 应用栏背景色为透明
    surfaceTintColor: Colors.transparent, // 应用栏表面颜色为透明
    iconTheme: IconThemeData(color: Colors.black, size: 24), // 图标颜色为黑色，大小为24
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24), // 动作图标颜色为白色，大小为24
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white), // 标题文本样式，字体大小18，加粗，颜色为白色
  );
}

