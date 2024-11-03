import 'package:flexishop/features/authentication/providers/providers.onboarding/onboarding_provider.dart';
import 'features/authentication/screens/screens.login/login_screen.dart';
import 'features/authentication/screens/screens.onboarding/onboarding_screen.dart';
import 'package:flexishop/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OnboardingProvider()),
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
      },
    );
  }
}
