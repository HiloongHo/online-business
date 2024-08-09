import 'package:flutter/material.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shaps/containers/rounded_container.dart';

class NCouponCode extends StatelessWidget {
  const NCouponCode({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return NRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? NColors.dark : NColors.white,
      padding: const EdgeInsets.only(
          top: NSizes.sm, bottom: NSizes.sm, right: NSizes.sm, left: NSizes.md),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            decoration: const InputDecoration(
                hintText: "有促销代码？请在此输入。",
                border: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
          )),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? NColors.white.withOpacity(0.5)
                    : NColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text("支付"),
            ),
          )
        ],
      ),
    );
  }
}
