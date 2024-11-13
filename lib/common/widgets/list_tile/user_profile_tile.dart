import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../images/circular_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';

class YUserProfileTile extends StatelessWidget {
  const YUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const YCircularImage(
        imageUrl: YImages.productImage1,
      ),
      title: Text('Golam Shakib Hosen',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: YColors.white)),
      subtitle: Text('support@golamshakib.h',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: YColors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit),
          color: YColors.white),
    );
  }
}
