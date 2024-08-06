import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/rounded_container.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/search_container.dart';
import 'package:online_business/common/widgets/layouts/grid_layout.dart';
import 'package:online_business/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:online_business/common/widgets/texts/n_brand_title_text_with_verified_icon.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/enums.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/n_circular_image.dart';
import '../../../../utils/constants/image_strings.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '商店',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [NCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: NHelperFunctions.isDarkMode(context)
                  ? NColors.black
                  : NColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(NSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: NSizes.spaceBtwItems,
                    ),
                    const NSearchContainer(
                      text: "在此搜索",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: NSizes.spaceBtwSections,
                    ),
                    NSectionHeading(
                      title: "特色品牌",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: NSizes.spaceBtwItems / 1.5,
                    ),
                    NGridLayout(
                        mainAxisExtent: 55,
                        itemCount: 6,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: NRoundedContainer(
                              padding: const EdgeInsets.all(NSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: NCircularImage(
                                      isNetworkImage: false,
                                      image: NImages.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          NHelperFunctions.isDarkMode(context)
                                              ? NColors.white
                                              : NColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: NSizes.spaceBtwItems / 2,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const NBrandTitleTextWithVerifiedIcon(
                                          title: "Nike",
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          "256类产品",
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}