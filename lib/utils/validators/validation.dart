/// NValidation类用于实现常见的验证逻辑，如邮箱、密码和电话号码的验证。
/// 它使用预编译的正则表达式来提高验证性能。
class NValidation {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '需要填写$fieldName';
    }
    return null;
  }

  // 预编译正则表达式以提高性能
  static final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final passwordSpecialCharactersRegExp =
      RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  /// 验证邮箱地址是否有效。
  /// [value]：待验证的邮箱地址。
  /// 返回值：如果邮箱地址无效，返回错误信息；否则返回null。
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return '需要填写邮箱地址';
    }
    if (!value.contains('@')) {
      return '无效的邮箱地址';
    }

    if (!emailRegExp.hasMatch(value)) {
      return '无效的邮箱地址';
    }
    return null;
  }

  /// 验证密码是否符合要求。
  /// [value]：待验证的密码。
  /// 返回值：如果密码不符合要求，返回错误信息；否则返回null。
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '需要填写密码';
    } else if (value.length < 6) {
      return '密码长度不能小于6';
    } else if (!passwordSpecialCharactersRegExp.hasMatch(value)) {
      return '密码必须包含特殊字符';
    }
    return null;
  }

  /// 验证电话号码是否有效。
  /// [value]：待验证的电话号码。
  /// 返回值：如果电话号码无效，返回错误信息；否则返回null。
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return '需要填写手机号码';
    } else if (value.length != 11) {
      return '无效的手机号码';
    }
    return null;
  }
}
