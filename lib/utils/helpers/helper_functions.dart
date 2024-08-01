import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';

/// 一些常用的辅助函数
class NHelperFunctions {
  /// 根据输入的字符串返回相应的颜色，如果找不到匹配的颜色，则返回null
  /// [value]：颜色的名称（如"Green"，"Red"等）
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } else if (value == "Yellow") {
      return Colors.yellow;
    } else {
      return null;
    }
  }

  /// 显示一个SnackBar消息
  /// [message]：要显示的消息文本
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  /// 显示一个警告对话框
  /// [title]：对话框的标题
  /// [message]：对话框的内容文本
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'))
            ],
          );
        });
  }

  /// 导航到指定的屏幕
  /// [context]：上下文对象，用于获取路由信息
  /// [screen]：要导航到的屏幕Widget
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  /// 截断类别文本，如果文本长度超过指定的最大长度，则在末尾添加省略号
  /// [text]：要处理的文本
  /// [maxLength]：文本的最大允许长度
  static String turnCateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  /// 检查当前是否为深色模式
  /// [context]：上下文对象，用于获取当前主题信息
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// 获取当前屏幕的尺寸
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  /// 获取当前屏幕的宽度
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  /// 获取当前屏幕的高度
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// 格式化日期
  /// [date]：要格式化的日期对象
  /// [format]：日期格式字符串，默认为'dd MMM yyyy'
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  /// 移除列表中的重复元素
  /// [list]：要处理的列表
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// 将小部件列表分组包装为Row小部件，每行包含指定数量的小部件
  /// [widgets]：要包装的小部件列表
  /// [rowSize]：每行包含的小部件数量
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

}
