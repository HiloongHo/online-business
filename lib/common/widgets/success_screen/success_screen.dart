import 'package:flutter/material.dart';
import 'package:online_business/common/styles/spacing_styles.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

/// 成功屏幕组件，用于显示操作成功后的界面
///
/// [SuccessScreen] 组件需要以下参数：
/// - [image] 成功界面显示的图片路径
/// - [title] 成功界面的标题文本
/// - [subtitle] 成功界面的副标题文本
/// - [onPressed] 点击继续按钮时的回调函数
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image:  AssetImage(image),
                width: NHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: NColors.primary),
                    onPressed: onPressed,
                    child: const Text(NTexts.nContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
