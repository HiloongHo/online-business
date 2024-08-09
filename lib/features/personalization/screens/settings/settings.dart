import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/primary_header_container.dart';
import 'package:online_business/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/features/shop/screens/order/order.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../address/address.dart';
import '../profile/profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NPrimaryHeaderContainer(
                child: Column(
              children: [
                NAppBar(
                    title: Text(
                  "我的账户",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: NColors.white),
                )),
                NUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: NSizes.spaceBtwSections,
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(NSizes.defaultSpace),
              child: Column(
                children: [
                  const NSectionHeading(
                    title: "账户设置",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwItems,
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "我的地址",
                    subTile: "管理收货地址",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "购物车",
                    subTile: "查看已添加的商品",
                    onTap: () {},
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "我的订单",
                    subTile: "查看订单状态",
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "银行账户",
                    subTile: "管理支付方式",
                    onTap: () {},
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "我的优惠券",
                    subTile: "查看可用优惠",
                    onTap: () {},
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "消息",
                    subTile: "查看最新通知",
                    onTap: () {},
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "帐户隐私",
                    subTile: "保护个人信息",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections,
                  ),
                  const NSectionHeading(
                    title: "软件设置",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwItems,
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.document_text,
                    title: "数据加载",
                    subTile: "配置数据加载选项",
                    onTap: () {},
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.location,
                    title: "位置设置",
                    subTile: "管理位置权限",
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: "用户安全",
                    subTile: "保护账户安全",
                    onTap: () {},
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  NSettingMenuTile(
                    icon: Iconsax.image,
                    title: "图片管理",
                    subTile: "管理图片上传和显示",
                    onTap: () {},
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: NSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("退出登录"),
                    ),
                  ),
                  const SizedBox(
                    height: NSizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
