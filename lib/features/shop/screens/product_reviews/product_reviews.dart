import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:online_business/features/shop/screens/product_reviews/widgets/user_review_card.dart';

import 'package:online_business/utils/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        title: Text("评价"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("评分和评论均经过验证，且来自使用与您相同类型设备的人士。"),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              const NOverallProductRating(),
              const NRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
