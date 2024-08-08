import 'package:flutter/material.dart';
import 'package:online_business/common/widgets/custom_shaps/containers/circular_container.dart';
import 'package:online_business/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class NChoiceChip extends StatelessWidget {
  const NChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = NHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? NColors.white : null),
        avatar: isColor
            ? NCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: NHelperFunctions.getColor(text)!)
            : null,
        shape:  isColor?const CircleBorder():null,
        labelPadding: isColor?const EdgeInsets.all(0):null,
        padding:  isColor?const EdgeInsets.all(0):null,
        backgroundColor:  isColor?NHelperFunctions.getColor(text)!:null,
      ),
    );
  }
}
