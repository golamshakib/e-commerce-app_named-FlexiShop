import 'package:flexishop/common/widgets/icons/circular_icon.dart';
import 'package:flexishop/common/widgets/layouts/grid_layout.dart';
import 'package:flexishop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flexishop/features/shop/screens/home/home_screen.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YCustomAppbar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          YCircularIcon(
            backgroundColor: Colors.transparent,
            icon: Iconsax.add,
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            children: [
              YGridLayout(
                  itemCount: 10,
                  itemBuilder: (_, index) => const YProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
