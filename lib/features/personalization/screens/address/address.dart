import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/features/personalization/screens/address/widgets/single_address.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: NColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: NColors.white,),
      ),
      appBar: NAppBar(title: Text("收货地址", style: Theme.of(context).textTheme.headlineSmall,)
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          children: [
          NSingleAddress(selectedAddress: false),
          NSingleAddress(selectedAddress: true),
          ],
        ),),
      ),
    );
  }
}
