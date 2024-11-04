import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/authentication/providers/providers.onboarding/onboarding_provider.dart';
import 'features/authentication/screens/login/login_screen.dart';
import 'features/authentication/screens/onboarding/onboarding_screen.dart';
import 'features/authentication/screens/signup/signup_screen.dart';
import 'features/authentication/screens/signup/verify_email.dart';
import 'utils/theme/theme.dart';

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
        SignupScreen.routeName: (context) => const SignupScreen(),
        VerifyEmail.routeName: (context) => const VerifyEmail(),
      },
    );
  }
}
