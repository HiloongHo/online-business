import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/n_circular_image.dart';

class NUserProfileTile extends StatelessWidget {
  const NUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const NCircularImage(
        image: NImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Sammy",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: NColors.white)),
      subtitle: Text(
        "sammy@gmail.com",
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: NColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: NColors.white,
        ),
      ),
    );
  }
}
