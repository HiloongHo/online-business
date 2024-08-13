import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

/// 网络管理器类，用于监控设备的网络连接状态。
/// 通过GetxController实现状态管理和依赖注入。
class NetWorkManager extends GetxController {
  // 单例获取网络管理器实例。
  static NetWorkManager get instance => Get.find();

  // 连接状态流的订阅对象，用于监听连接状态变化。
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  // 通过Connectivity库获取系统连接状态。
  final Connectivity _connectivity = Connectivity();

  // 使用Rx<ConnectivityResult>观察连接状态的变化，初始状态为ConnectivityResult.none。
  final Rx<ConnectivityResult> _connectionState = ConnectivityResult.none.obs;
}
