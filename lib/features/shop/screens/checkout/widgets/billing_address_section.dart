import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/sizes.dart';

class NBillingAddressSection extends StatelessWidget {
  const NBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NSectionHeading(
          title: "配送地址",
          buttonTitle: "更改",
          onPressed: () {},
        ),
        Text(
          "何海龙",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            Text(
              "+92-233-3243554",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            Expanded(
                child: Text(
              "South Liana, Maine 77546, USA",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ))
          ],
        )
      ],
    );
  }
}
