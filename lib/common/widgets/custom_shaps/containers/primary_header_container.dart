import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

/// 主要标题容器组件，用于在界面上方提供一个带有特殊效果的布局容器。
/// 它结合了自定义的曲边形状、背景色以及透明的圆形元素，以创建一个独特的视觉效果。
///
/// [child] 必须提供，是放置在标题容器内的子组件。
class NPrimaryHeaderContainer extends StatelessWidget {
  const NPrimaryHeaderContainer({
    super.key,  required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // 使用NCurvedEdgeWidget来应用自定义的曲边形状，以匹配整体设计语言。
    // 容器使用主色调，并通过EdgeInsets调整内边距，以适应设计需求。
    // Stack布局用于实现重叠效果，包括背景的透明圆形元素和主要的子组件。
    return NCurvedEdgeWidget(
      child: Container(
        color: NColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: <Widget>[
              // 两个相同的透明圆形容器，通过调整透明度来实现视觉效果
              Positioned(
                top: 150,
                right: -250,
                child: NCircularContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -200,
                child: NCircularContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
