
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/home/home_screen.dart';
import 'features/shop/screens/store/store_screen.dart';
import 'features/shop/screens/wishlist/wishlist_screen.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/text_strings.dart';
import 'utils/device/device_utility.dart';

class NavigationMenu extends StatelessWidget {
  static const String routeName = '/navigation';

  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Consumer<NavigationMenuProvider>(
        builder: (context, provider, child) => NavigationBar(
          height: 80.0,
          elevation: 0,
          selectedIndex: provider._selectedIndex,
          onDestinationSelected: (index) => provider.updateSelectedIndex(index),
          backgroundColor: dark ? YColors.black : YColors.white,
          indicatorColor: dark
              ? YColors.white.withOpacity(0.1)
              : YColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: YTexts.home),
            NavigationDestination(
                icon: Icon(Iconsax.shop), label: YTexts.store),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: YTexts.wishlist),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: YTexts.profile),
          ],
        ),
      ),
      body: Consumer<NavigationMenuProvider>(
        builder: (context, provider, child) =>
            provider.screens[provider._selectedIndex],
      ),
    );
  }
}

/// -- N A V I G A T I O N   M E N U   P R O V I D E R
class NavigationMenuProvider with ChangeNotifier {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
