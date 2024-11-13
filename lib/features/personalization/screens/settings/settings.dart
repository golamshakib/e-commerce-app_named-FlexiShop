import 'package:flexishop/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/setting';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// -- Header
            YPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  YCustomAppbar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: YColors.white))),
                  const SizedBox(height: YSizes.spaceBtwSections),

                  /// -- User Profile Tile
                  const YUserProfileTile(),
                  const SizedBox(height: YSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(YSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings Heading
                  const YSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: YSizes.spaceBtwItems),

                  /// -- Settings Tile
                  YSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message',
                      onTap: () {}),
                  YSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts',
                      onTap: () {}),
                  const SizedBox(height: YSizes.spaceBtwSections),


                  /// -- App Settings
                  const YSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: YSizes.spaceBtwItems),
                  YSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload data to your cloud Firebase',
                      onTap: () {}),

                  /// -- With Switch Button
                  YSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  YSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  YSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  const SizedBox(height: YSizes.spaceBtwSections),

                  /// -- Logout Button
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text('Logout'))),
                  const SizedBox(height: YSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
