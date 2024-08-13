import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:online_business/utils/popups/loaders.dart';

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

  /// 初始化网络管理器，监听网络状态变化。
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  /// 更新连接状态，并在断开连接时显示警告。
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionState.value == result;
    if (_connectionState.value == ConnectivityResult.none) {
      NLoaders.warningSnackBar(title: "没有网络");
    }
  }

  /// 检查设备是否已连接到网络。
  ///
  /// 返回值为Future<bool>，true表示已连接，false表示未连接或检查失败。
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }
}
