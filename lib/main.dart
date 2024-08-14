import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

Future<void> main() async {
  // 组件依赖
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // 初始化本地存储
  await GetStorage.init();

  // 等待加载动画
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 初始化 Firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyD8dJZzjwXxTe_tFRLoxxGG_j8kcvvHPAE',
          appId: '1:885160095978:android:717b2875f29108abc62793',
          messagingSenderId: '885160095978',
          projectId: 'onlinebusiness-30107'));
  // 初始化验证

  runApp(const App());
}
