import 'package:flutter/material.dart';

/// 自定义的剪裁路径类，用于创建一个带有曲线边缘的路径
class NCustomCurvedEdge extends CustomClipper<Path> {

  /// 获取剪裁的路径
  /// [size] 参数表示剪裁区域的尺寸
  /// 返回一个描述剪裁区域边界的路径
  @override
  Path getClip(Size size) {
    var path = Path();
    // 从左下角开始，向上画直线到起点
    path.lineTo(0, size.height);

    // 定义路径上的第一个曲线部分的起点和终点
    final firstCurve = Offset(0, size.height-20);
    final lastCurve = Offset(30, size.height-20);
    // 画第一条二次贝塞尔曲线
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // 定义路径上的第二个曲线部分的起点和终点
    final secondFirstCurve = Offset(0, size.height-20);
    final secondLastCurve = Offset(size.width-30, size.height-20);
    // 画第二条二次贝塞尔曲线
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    // 定义路径上的第三个曲线部分的起点和终点
    final thirdFirstCurve = Offset(size.width, size.height-20);
    final thirdLastCurve = Offset(size.width, size.height);
    // 画第三条二次贝塞尔曲线
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    // 画直线从右下角到右上角，完成路径闭合
    path.lineTo(size.width, 0);
    // 闭合路径
    path.close();
    // 返回最终的路径
    return path;
  }

  /// 决定是否需要重新绘制剪裁路径
  /// [oldClipper] 参数是之前的剪裁器实例
  /// 返回一个布尔值，表示是否需要重新绘制
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // 当前实现总是返回true，表示每次都会重新绘制路径
    return true;
  }

}
