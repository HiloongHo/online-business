import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/popups/full_screen_loader.dart';
import 'package:online_business/utils/popups/loaders.dart';
import '../../../../utils/helpers/network_manager.dart';

/// [SignupController] 类负责处理用户注册过程中的表单验证和网络请求。
class SignupController extends GetxController {
  // 单例模式，方便全局访问 [SignupController] 实例。
  static SignupController get instance => Get.find();

  // 用于存储和验证用户输入的电子邮件地址。
  final email = TextEditingController();
  // 用于存储和验证用户输入的密码。
  final password = TextEditingController();
  // 用于存储和验证用户的姓氏。
  final lastName = TextEditingController();
  // 用于存储和验证用户的名。
  final firstName = TextEditingController();
  // 用于存储和验证用户的电话号码。
  final phoneNumber = TextEditingController();
  // 用于存储和验证用户的用户名。
  final userName = TextEditingController();
  // 全局Key，用于表单验证。
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// 执行用户注册操作。
  ///
  /// 此方法首先检查网络连接，然后验证表单数据，最后执行注册逻辑。
  ///
  /// 使用 [NFullScreenLoader] 显示加载动画，提高用户体验。
  /// 使用 [NetWorkManager] 检查设备的网络连接状态。
  /// 如果网络不可用或者表单验证失败，将停止加载动画并返回。
  Future<void> signup() async {
    try {
      // 显示加载对话框，直到注册流程完成。
      NFullScreenLoader.openLoadingDialog(
          "正在处理您的信息......", NImages.docerAnimation);

      // 检查设备是否连接到网络。
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        // 如果没有网络连接，停止加载对话框并返回。
        NFullScreenLoader.stopLoading();
        return;
      }

      // 验证表单数据。
      if (!signupFormKey.currentState!.validate()) {
        // 如果表单验证失败，停止加载对话框并返回。
        NFullScreenLoader.stopLoading();
        return;
      }
    } catch (e) {
      // 捕获异常，并显示错误信息。
      NLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      // 最终确保加载对话框被关闭。
      NFullScreenLoader.stopLoading();
    }
  }
}
