// 导入Material设计的包，包含构建用户界面所需的基础组件
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/utils/constants/colors.dart';

// 导入自定义主题配置文件，用于统一管理应用的视觉风格
import 'package:online_business/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

/// App 类，表示整个应用程序的入口组件。
///
/// 此 StatelessWidget 定义了应用的基础配置，如主题模式的选择，
/// 以及亮色主题和暗色主题的设置。
class App extends StatelessWidget {
  // 使用命名构造函数，允许传递键值参数
  const App({super.key});

  /// 构建方法，创建和返回组件树。
  ///
  /// @param context BuildContext 上下文，提供有关当前位置的信息，用于访问Flutter框架的功能。
  ///
  /// @return Widget 返回一个 MaterialApp 实例，它是Flutter应用的主要widget，
  ///         负责管理路由、主题等全局设置。
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // 设置主题模式跟随系统
      themeMode: ThemeMode.system,
      // 应用的亮色主题样式
      theme: NAppTheme.lightTheme,
      // 应用的暗色主题样式（此处示例中与亮色主题相同，根据需求可调整）
      darkTheme: NAppTheme.darkTheme,

      home: const Scaffold(
        backgroundColor: NColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
