import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_business/common/widgets/icons/n_circlular_icon.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/constants/sizes.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

/// 一个用于在线商务应用底部栏的Widget，提供增加或减少商品数量的功能，并允许将商品添加至购物车。
class NBottomToAddCart extends StatelessWidget {
  /// 构造函数
  const NBottomToAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    // 判断当前设备是否处于深色模式
    final dark = NHelperFunctions.isDarkMode(context);

    // 容器组件，用于展示底部栏
    return Container(
      // 设置容器内边距
      padding: const EdgeInsets.symmetric(
          horizontal: NSizes.defaultSpace, vertical: NSizes.defaultSpace / 2),
      // 设置容器装饰样式
      decoration: BoxDecoration(
        // 根据深色模式设置背景颜色
        color: dark ? NColors.darkerGrey : NColors.light,
        // 设置圆角边框
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(NSizes.cardRadiusLg),
          topRight: Radius.circular(NSizes.cardRadiusLg),
        ),
      ),
      // 子组件布局
      child: Row(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // 子组件列表
        children: [
          // 数量控制区域
          Row(
            children: [
              // 减少按钮
              const NCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: NColors.darkerGrey,
                width: 40,
                height: 40,
                color: NColors.white,
              ),
              // 按钮间隔
              const SizedBox(
                width: NSizes.spaceBtwItems,
              ),
              // 当前数量文本
              Text(
                '2',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleSmall,
              ),
              // 按钮间隔
              const SizedBox(
                width: NSizes.spaceBtwItems,
              ),
              // 增加按钮
              const NCircularIcon(
                icon: Iconsax.add,
                backgroundColor: NColors.black,
                width: 40,
                height: 40,
                color: NColors.white,
              )
            ],
          ),
          // 添加至购物车按钮
          ElevatedButton(
            onPressed: () {},
            // 按钮样式
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(NSizes.md),
                backgroundColor: NColors.black,
                side: const BorderSide(color: NColors.black)),
            // 按钮文字
            child: const Text("添加到购物车"),
          )
        ],
      ),
    );
  }
}
