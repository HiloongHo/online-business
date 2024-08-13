import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/common/widgets/loaders/animation_loader.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

/// 全屏加载器类，用于显示和隐藏加载对话框
class NFullScreenLoader {
  /// 显示加载对话框
  /// [text] 加载对话框中显示的文本
  /// [animation] 加载动画的名称
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
            child: Container(
              color: NHelperFunctions.isDarkMode(Get.context!)
                  ? NColors.dark
                  : NColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50), // 顶部间距
                  NAnimationLoaderWidget(text: text, animation: animation) // 动画加载器
                ],
              ),
            ),
            onWillPop: () async => false));
  }

  /// 隐藏加载对话框
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
