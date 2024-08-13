import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  final userName = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try{
      NFullScreenLoader.openLoadingDialog("正在处理您的信息......", NImages.docerAnimation);

    }catch(e) {}finally{}
  }
}