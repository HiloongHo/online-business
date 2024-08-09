import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/images/n_rounded_image.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NAppBar(
        title: Text("运动短袖"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              NRoundedImage(
                imageUrl: NImages.banner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
