import 'package:get_storage/get_storage.dart';

/// 本地存储管理类，封装了 GetStorage 的操作
class NLocalStorage {
  // 单例模式，确保只有一个实例
  static final NLocalStorage _instance = NLocalStorage._internal();

  // 私有构造函数，用于内部创建单例
  NLocalStorage._internal();

  // 使用 GetStorage 初始化存储对象
  final _storage = GetStorage();

  /// 保存数据到本地存储
  ///
  /// [key] - 存储数据的键名
  /// [value] - 要存储的数据值
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  /// 从本地存储读取数据
  ///
  /// [key] - 要读取的数据的键名
  /// 返回值为 [T]? 类型，如果键名不存在或类型不匹配，将返回 null
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  /// 从本地存储中移除指定键的数据
  ///
  /// [key] - 要移除的数据的键名
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  /// 清除所有本地存储数据
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
