import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flexishop/common/widgets/images/circular_image.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flexishop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const YCustomAppbar(showBackArrow: true, title: Text('Profile')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                /// --- Profile Picture & Picture Change Button
                const YCircularImage(imageUrl: YImages.lightAppLogo),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture')),

                /// --- Details
                const SizedBox(height: YSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: YSizes.spaceBtwItems),

                /// Profile Information
                    /// -- Heading
                const YSectionHeading(
                    title: 'Profile Information', showActionButton: false),
                const SizedBox(height: YSizes.spaceBtwItems),
                   /// -- Information
                YProfileMenu(
                    title: 'Name',
                    value: 'Golam Shakib Hosen',
                    onPressed: () {}),
                YProfileMenu(
                    title: 'Username',
                    value: 'golam_shakib.h',
                    onPressed: () {}),

                /// Divider
                const SizedBox(height: YSizes.spaceBtwSections),
                const Divider(),
                const SizedBox(height: YSizes.spaceBtwItems),

                /// Personal Information
                    /// -- Heading
                const YSectionHeading(
                    title: 'Personal Information', showActionButton: false),
                const SizedBox(height: YSizes.spaceBtwItems),

                    /// -- Information
                YProfileMenu(
                    title: 'User ID', value: '45678', icon: Iconsax.copy, onPressed: () {}),
                YProfileMenu(
                    title: 'E-mail', value: 'golamshakib.h@gmail.com', onPressed: () {}),
                YProfileMenu(
                    title: 'Phone Number', value: '+880 1519-607553', onPressed: () {}),
                YProfileMenu(
                    title: 'Gender', value: 'Male', onPressed: () {}),
                YProfileMenu(
                    title: 'Date of Birth', value: '26 March, 1999', onPressed: () {}),

                /// Divider
                const Divider(),
                const SizedBox(height: YSizes.spaceBtwItems),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Close Account',
                          style: TextStyle(color: Colors.red))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
