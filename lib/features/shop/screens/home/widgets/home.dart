import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/colors.dart';

// 导入自定义的圆形容器组件
import '../../../../../common/widgets/custom_shaps/containers/circular_container.dart';

/// 主页屏幕组件
/// 作为应用程序的主页，使用了自定义的圆形容器来增强界面的视觉效果
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用 Scaffold 构建基本页面结构
    // 通过 SingleChildScrollView 提供垂直滚动功能
    // Column 组件用于布局页面元素
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 顶部容器，设置背景色和内边距
            // 使用 Stack 布局来叠加多个圆形容器，以实现特定的视觉效果
            Container(
              color: NColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  // 两个相同的透明圆形容器，通过调整透明度来实现视觉效果
                  TCircularContainer(
                    backgroundColor: NColors.textWhite.withOpacity(0.1),
                  ),
                  TCircularContainer(
                    backgroundColor: NColors.textWhite.withOpacity(0.1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
