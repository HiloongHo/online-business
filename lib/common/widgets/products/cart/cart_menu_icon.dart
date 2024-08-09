import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../features/shop/screens/cart/cart.dart';

class NCartCounterIcon extends StatelessWidget {
  const NCartCounterIcon(
      {super.key,
      required this.onPressed,
      this.iconColor,
      this.counterBgColor,
      this.counterTextColor});

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
            right: 0,
            child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color:
                      counterBgColor ?? (dark ? NColors.white : NColors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
              child: Center(
                child: Text(
                  "3",
                  // 通过Theme.of(context).textTheme.labelLarge!来应用主题样式，并自定义颜色和字体大小
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(
                      color: NColors.white,
                      fontSizeFactor: 0.8),
                ),
              ),
            )
        )
      ],
    );
  }
}
