import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/constants/colors.dart';

/// 一个用于加载和显示不同类型的Snackbar通知的类。
class NLoaders {
  /// 显示警告型Snackbar。
  ///
  /// 参数:
  /// - title: Snackbar的标题，必需。
  /// - message: Snackbar的消息，默认为空字符串。
  static warningSnackBar({required String title, String message = ""}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: NColors.white,
        backgroundColor: Colors.orange,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: NColors.white,
        ));
  }

  /// 显示错误型Snackbar。
  ///
  /// 参数:
  /// - title: Snackbar的标题，必需。
  /// - message: Snackbar的消息，默认为空字符串。
  static errorSnackBar({required String title, String message = ""}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: NColors.white,
        backgroundColor: Colors.red.shade600,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: NColors.white,
        ));
  }

  /// 显示成功型Snackbar。
  ///
  /// 参数:
  /// - title: Snackbar的标题，必需。
  /// - message: Snackbar的消息，默认为空字符串。
  static successSnackBar({required String title, String message = ""}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: NColors.white,
        backgroundColor: Colors.green.shade600,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon:  const Icon(
          Iconsax.chart_success,
          color: NColors.white,
        ));
  }
}
