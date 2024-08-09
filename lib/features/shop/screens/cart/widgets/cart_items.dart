import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class NCarItems extends StatelessWidget {
  const NCarItems({
    super.key,  this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) =>   Column(
        children: [
          const NCartItem(),
          if(showAddRemoveButtons) const SizedBox(
            height: NSizes.spaceBtwItems,
          ),
          if(showAddRemoveButtons)const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  NProductQuantityWithAddRemoveButton(),
                ],
              ),
              NProductPriceText(price: "256")
            ],
          )
        ],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: NSizes.spaceBtwSections,
      ),
      itemCount: 2,
      shrinkWrap: true,
    );
  }
}

