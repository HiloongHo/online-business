import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/success_screen/success_screen.dart';
import 'package:online_business/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:online_business/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:online_business/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:online_business/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:online_business/navigation_menu.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: NAppBar(
        showBackArrow: true,
        title: Text(
          "订单审核",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              const NCarItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              const NCouponCode(),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              NRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(NSizes.md),
                backgroundColor: dark ? NColors.black : NColors.white,
                child: const Column(
                  children: [
                    NBillingAmountSection(),
                    SizedBox(
                      height: NSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: NSizes.spaceBtwItems,
                    ),
                    NBillingPaymentSection(),
                    SizedBox(
                      height: NSizes.spaceBtwItems,
                    ),
                    NBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: NColors.primary),
            onPressed: () => Get.to(() => SuccessScreen(
                image: NImages.successfulPayment,
                title: "支付成功！",
                subtitle: "您的货物即将送达",
                onPressed: () => Get.off(() => NavigationMenu()))),
            child: const Text("总计 \$256.0")),
      ),
    );
  }
}
