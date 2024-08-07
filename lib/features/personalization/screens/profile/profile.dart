import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/common/widgets/images/n_circular_image.dart';
import 'package:online_business/common/widgets/texts/section_heading.dart';
import 'package:online_business/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:online_business/utils/constants/image_strings.dart';
import 'package:online_business/utils/constants/sizes.dart';

/// 个人资料屏幕，允许用户查看和编辑个人信息。
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        showBackArrow: true,
        title: Text("编辑个人信息"),
      ), // 自定义应用栏，提供返回功能和页面标题
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              // 用户头像区域
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const NCircularImage(
                      image: NImages.user,
                      width: 80,
                      height: 80,
                    ), // 默认用户头像
                    TextButton(onPressed: () {}, child: const Text("修改头像")) // 修改头像按钮
                  ],
                ),
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              // 个人档案标题
              const NSectionHeading(
                title: "个人档案",
                showActionButton: false,
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              // 个人档案菜单项，包括名字、用户名等
              NProfileMenu(
                title: "名字",
                value: "张三",
                onPressed: () {},
              ),
              NProfileMenu(
                title: "用户名",
                value: "@zhangsan",
                onPressed: () {},
              ),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: NSizes.spaceBtwItems,
              ),
              // 个人信息标题
              const NSectionHeading(
                title: "个人信息",
                showActionButton: false,
              ),
              // 个人信息菜单项，包括用户号、邮箱、电话号码、性别、生日等
              NProfileMenu(
                title: "用户号",
                value: "123456789",
                onPressed: () {},
              ),
              NProfileMenu(
                title: "邮箱",
                value: "zhangsan@example.com",
                onPressed: () {},
              ),
              NProfileMenu(
                title: "电话号码",
                value: "+1234567890",
                onPressed: () {},
              ),
              NProfileMenu(
                title: "性别",
                value: "男",
                onPressed: () {},
              ),
              NProfileMenu(
                title: "生日",
                value: "1990-01-01",
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: NSizes.spaceBtwItems,),
              // 关闭账户按钮
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text(
                    "关闭账户",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
