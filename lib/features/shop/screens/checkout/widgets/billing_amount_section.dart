import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/sizes.dart';

class NBillingAmountSection extends StatelessWidget {
  const NBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$256.8",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: NSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$256.8",style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: NSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$256.8",style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: NSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$256.8",style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      ],
    );
  }
}
