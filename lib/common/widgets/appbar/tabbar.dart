import 'package:flutter/material.dart';
import 'package:online_business/utils/constants/colors.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

class NTabBar extends StatelessWidget implements PreferredSizeWidget {
  const NTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? NColors.black : NColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: NColors.primary,
        unselectedLabelColor: NColors.darkGrey,
        labelColor: NHelperFunctions.isDarkMode(context)
            ? NColors.white
            : NColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
