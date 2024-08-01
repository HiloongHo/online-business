import 'package:intl/intl.dart';

/// 提供数字格式化的方法，包括日期、货币和电话号码
class NFormatter {
  /// 格式化日期为指定的格式
  /// [date] 是要格式化的日期，如果为null，则使用当前日期
  /// 返回格式化后的日期字符串
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  /// 格式化金额为货币形式
  /// [amount] 是要格式化的金额
  /// 返回格式化后的货币字符串
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: "\$").format(amount);
  }

  /// 格式化电话号码为指定格式
  /// [phoneNumber] 是要格式化的电话号码
  /// 返回格式化后的电话号码字符串
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 4)} (${phoneNumber.substring(4, 7)}) ${phoneNumber.substring(7)}';
    }
      return phoneNumber;
  }

  /// 根据国际格式格式化电话号码
  /// [phoneNumber] 是要格式化的电话号码
  /// 返回格式化后的电话号码字符串，如果格式无效则返回错误信息
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // 安全性和输入验证：确保输入包含至少两个数字
    if (!RegExp(r'\d{2,}').hasMatch(phoneNumber)) {
      return 'Invalid phone number format';
    }

    // 移除所有非数字字符
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // 处理边界条件：确保digitsOnly至少包含两个字符
    if (digitsOnly.length < 2) {
      return 'Invalid phone number format';
    }

    // 构造国家代码
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // 直接构建完整的号码字符串，提高性能
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      // 根据国家代码调整分组长度
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    // 移除可能的末尾多余空格
    return formattedNumber.toString().trimRight();
  }


}
