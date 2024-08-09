import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/appbar/appbar.dart';
import 'package:online_business/features/shop/screens/order/widgets/orders_list.dart';
import 'package:online_business/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NAppBar(title: Text("我的订单",style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(NSizes.defaultSpace),
      child: NOrdersList(),),
    );
  }
}
