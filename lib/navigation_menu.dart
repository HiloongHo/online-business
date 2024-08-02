import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/features/shop/screens/home/widgets/home.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

/// 导航菜单组件，用于应用的底部导航
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // 创建导航控制器实例
    final controller = Get.put(NavigationController());
    // 获取当前是否为暗黑模式
    final darkMode = NHelperFunctions.isDarkMode(context);
    // 构建底部导航栏
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode? NColors.black : NColors.white,
          indicatorColor: darkMode? NColors.white.withOpacity(0.1) : NColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "首页"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "商城"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "心愿单"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "我的"),
          ],
        ),
      ),
      // 根据选中的导航项显示对应的页面
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

/// 导航控制器，管理导航项的选中状态和对应页面
class NavigationController extends GetxController {
  // 默认选中首页
  final Rx<int> selectedIndex = 0.obs;

  // 定义每个导航项对应的页面
  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
}
