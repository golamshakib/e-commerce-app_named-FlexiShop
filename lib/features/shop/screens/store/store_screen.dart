import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flexishop/common/widgets/appbar/tabbar.dart';
import 'package:flexishop/common/widgets/custom_shape/container/search_container.dart';
import 'package:flexishop/common/widgets/layouts/grid_layout.dart';
import 'package:flexishop/common/widgets/products/product_cards/product_cart_counter_icon.dart';
import 'package:flexishop/common/widgets/texts/section_heading.dart';
import 'package:flexishop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


import '../../../../utils/device/device_utility.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  static const String routeName = '/store';

  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: YCustomAppbar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [YCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              expandedHeight: 440.0,
              backgroundColor: dark ? YColors.dark : YColors.light,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(YSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search bar
                    const SizedBox(height: YSizes.spaceBtwItems),
                    const YCustomSearchBar(
                        text: 'Search in Store',
                        showBackground: false,
                        padding: EdgeInsets.zero),
                    const SizedBox(height: YSizes.spaceBtwItems),

                    /// -- Featured Brands Title
                    const YSectionHeading(title: 'Featured Brands'),
                    const SizedBox(height: YSizes.spaceBtwItems / 1.5),

                    YGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,

                      /// -- Brand Grid
                      itemBuilder: (_, index) =>
                          const YBrandCard(showBorder: true),
                    ),
                  ],
                ),
              ),

              /// -- Tabs
              bottom: const YTabBar(
                tabs: [
                  Tab(text: 'Sports'),
                  Tab(text: 'Furniture'),
                  Tab(text: 'Electronics'),
                  Tab(text: 'Cloths'),
                  Tab(text: 'Shoes'),
                ],
              ),
            ),
          ],

          /// -- Body
          body: const TabBarView(
            children: [YCategoryTab(), YCategoryTab(), YCategoryTab(), YCategoryTab(), YCategoryTab()],
          ),
        ),
      ),
    );
  }
}
