import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        showBackArrow: true,
        title: Text("添加新的地址"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: '姓名'),
                ),
                const SizedBox(
                  height: NSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: "电话号码"),
                ),
                const SizedBox(
                  height: NSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: "地址"),
                    )),
                    const SizedBox(
                      width: NSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code), labelText: "邮编"),
                    ))
                  ],
                ),
                const SizedBox(
                  height: NSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: "国家"),
                ),
                const SizedBox(
                  height: NSizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: NColors.primary),
                      child: const Text("保存")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
