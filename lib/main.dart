import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

import 'app.dart';

Future<void> main() async {
  // 组件依赖

  // 初始化本地存储

  // 等待加载动画

  // 初始化 Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 初始化验证

  runApp(const App());
}
