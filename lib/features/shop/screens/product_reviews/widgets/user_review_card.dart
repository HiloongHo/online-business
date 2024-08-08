import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/products/ratings/rating_indicator.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(NImages.userProfileImage1),
                ),
                const SizedBox(
                  width: NSizes.spaceBtwItems,
                ),
                Text(
                  "John Doe",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const NRatingBarIndicator(rating: 4),
            const SizedBox(
              width: NSizes.spaceBtwItems,
            ),
            Text(
              "01, Nov, 2024",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: NSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          "dadasdasdasdasdqwdaswdasasds1dasdascdswvbvsbvbewfwf",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: "收起",
          trimCollapsedText: "展开",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: NColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: NColors.primary),
        ),

        NRoundedContainer(
          backgroundColor: dark? NColors.darkerGrey:NColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(NSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("N's Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("01, Nov, 2024", style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                const SizedBox(
                  height: NSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  "dadasdasdasdasdqwdaswdasasds1dasdascdswvbvsbvbewfwf",
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "收起",
                  trimCollapsedText: "展开",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: NColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: NColors.primary),
                ),

              ],
            ),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
