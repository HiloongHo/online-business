import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/features/authentication/controllers/signup/signup_controller.dart';

// 导入自定义颜色常量
import '../../../../../utils/constants/colors.dart';

// 导入自定义尺寸常量
import '../../../../../utils/constants/sizes.dart';

// 导入自定义文本字符串常量
import '../../../../../utils/constants/text_strings.dart';

// 导入辅助函数
import '../../../../../utils/helpers/helper_functions.dart';

/// NTermsAndConditionCheckbox 小部件，用于显示带复选框的条款和条件同意语句
class NTermsAndConditionCheckbox extends StatelessWidget {
  const NTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    // 检查当前是否为深色模式
    final dark = NHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // 自定义尺寸的复选框
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)),
        ),
        // 间隔空隙
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        // 含有条款和条件同意语句的富文本
        Text.rich(TextSpan(children: [
          TextSpan(
              text: NTexts.iAgreeTo,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: NTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? NColors.white : NColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? NColors.white : NColors.primary)),
          TextSpan(
              text: NTexts.and, style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: NTexts.termsOfService,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? NColors.white : NColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? NColors.white : NColors.primary)),
        ]))
      ],
    );
  }
}
