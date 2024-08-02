import 'package:flutter/material.dart';

// 导入自定义颜色常量
import '../../../utils/constants/colors.dart';
// 导入辅助函数
import '../../../utils/helpers/helper_functions.dart';

/// `NFormDivider`是一个自定义的表单分隔符组件，用于在表单中创建一个带文本的分隔线。
/// 它通过一个文本将两个分隔线分开，常用于表单中需要区隔不同部分的地方。
class NFormDivider extends StatelessWidget {
  /// 构造函数，用于创建`NFormDivider`实例。
  /// [dividerText]是必需的参数，用于指定分隔符中间显示的文本。
  const NFormDivider({
    super.key, required this.dividerText,
  });

  /// 分隔符中间显示的文本
  final String dividerText;

  /// 创建并返回一个`Row`小部件，其中包含两个`Divider`和一个`Text`小部件。
  @override
  Widget build(BuildContext context) {
    // 检查当前是否是暗黑模式
    final dark = NHelperFunctions.isDarkMode(context);
    // 构建Row组件，其中包含两个Divider和一个Text组件
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 第一个Divider，根据暗黑模式设置颜色
        Flexible(
          child: Divider(
            color: dark ? NColors.darkGrey : NColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        // 显示传入的文本
        Text(dividerText, style: Theme
            .of(context)
            .textTheme
            .labelMedium,),
        // 第二个Divider，根据暗黑模式设置颜色
        Flexible(
          child: Divider(
            color: dark ? NColors.darkGrey : NColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
