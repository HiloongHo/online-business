import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

class NSingleAddress extends StatelessWidget {
  const NSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return NRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(NSizes.md),
      backgroundColor: selectedAddress
          ? NColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? NColors.darkerGrey
              : NColors.grey,
      margin: const EdgeInsets.only(bottom: NSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? NColors.light
                      : NColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(
                height: NSizes.sm / 2,
              ),
              const Text(
                "(+123) 456 7890",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: NSizes.sm / 2,
              ),
              Text(
                '82356 Timy Coves, South Liana, Maine, 87665, USA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
