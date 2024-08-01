import 'dart:convert';
import 'package:http/http.dart' as http;

/// 一个用于处理HTTP请求的类。
class NHttpHelper {
  /// API的基本URL。
  static const String _baseUrl = "";

  /// 向指定端点发送GET请求。
  /// [endpoint] API的端点。
  /// 返回一个Future，其中包含解析后的JSON数据。
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  /// 向指定端点发送POST请求。
  /// [endpoint] API的端点。
  /// [data] 要发送的数据，将被编码为JSON。
  /// 返回一个Future，其中包含解析后的JSON数据。
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  /// 向指定端点发送PUT请求。
  /// [endpoint] API的端点。
  /// [data] 要发送的数据，将被编码为JSON。
  /// 返回一个Future，其中包含解析后的JSON数据。
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  /// 向指定端点发送DELETE请求。
  /// [endpoint] API的端点。
  /// 返回一个Future，其中包含解析后的JSON数据。
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  /// 处理HTTP响应。
  /// [response] HTTP响应对象。
  /// 如果状态码为200，则返回解析后的JSON数据；否则抛出异常。
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('加载数据失败: ${response.statusCode}');
    }
  }
}
