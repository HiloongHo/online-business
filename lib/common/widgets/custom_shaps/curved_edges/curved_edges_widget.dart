import 'package:flutter/material.dart';

// 导入自定义的曲边形状实现
import 'curved_edges.dart';

/// NCurvedEdgeWidget是一个无状态的Flutter小部件，用于将任意子小部件裁剪为自定义的曲边形状。
/// 它使用NCustomCurvedEdge剪裁器来实现这一点。
class NCurvedEdgeWidget extends StatelessWidget {
  /// 构造函数用于创建一个NCurvedEdgeWidget实例。
  /// [key]是小部件的键，用于Widget树。[child]是可选的子小部件，将被曲边形状裁剪。
  const NCurvedEdgeWidget({
    super.key, this.child,
  });

  /// 子小部件，将被裁剪为自定义的曲边形状。这个参数是可选的。
  final Widget? child;

  /// 重写build方法以构建小部件树。
  /// 返回一个ClipPath小部件，其使用NCustomCurvedEdge作为剪裁器，子小部件为[child]。
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: NCustomCurvedEdge(),
      child: child,
    );
  }
}
