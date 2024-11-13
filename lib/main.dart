import 'package:flexishop/features/shop/providers/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/authentication/providers/onboarding/onboarding_provider.dart';
import 'features/authentication/screens/password_configuration/forget_password_screen.dart';
import 'features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'features/authentication/screens/signup/success_email_screen.dart';
import 'features/authentication/screens/login/login_screen.dart';
import 'features/authentication/screens/onboarding/onboarding_screen.dart';
import 'features/authentication/screens/signup/signup_screen.dart';
import 'features/authentication/screens/signup/verify_email_screen.dart';
import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/home/home_screen.dart';
import 'features/shop/screens/store/store_screen.dart';
import 'features/shop/screens/wishlist/wishlist_screen.dart';
import 'navigation_menu.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OnboardingProvider()),
      ChangeNotifierProvider(create: (context) => NavigationMenuProvider()),
      ChangeNotifierProvider(create: (context) => HomeProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: YAppTheme.lightTheme,
      darkTheme: YAppTheme.darkTheme,
      initialRoute: OnboardingScreen.routeName,
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        VerifyEmailScreen.routeName: (context) => const VerifyEmailScreen(),
        SuccessEmailScreen.routeName: (context) => const SuccessEmailScreen(),
        ForgetPasswordScreen.routeName: (context) => const ForgetPasswordScreen(),
        PasswordResetScreen.routeName: (context) => const PasswordResetScreen(),
        NavigationMenu.routeName: (context) => const NavigationMenu(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        StoreScreen.routeName: (context) => const StoreScreen(),
        WishlistScreen.routeName: (context) => const WishlistScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
      },
    );
  }
}
