import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:online_business/features/shop/screens/checkout/checkout.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NAppBar(
        showBackArrow: true,
        title: Text(
          "购物车",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(NSizes.defaultSpace),
        child: NCarItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: NColors.primary),
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text("总计 \$256.0")),
      ),
    );
  }
}

