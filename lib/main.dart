import 'package:event/log_in.dart';
import 'package:event/splachScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboardingScreens/onboardingScreen1.dart' show OnboardingScreen1;
import 'onboardingScreens/onboardingScreen2.dart';
import 'onboardingScreens/onboardingScreen3.dart';
import 'onboardingScreens/onboardingScreen4.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import 'providers/themeProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        final lightTheme = ThemeData.light().copyWith(
          primaryColor: Colors.blue,
        );

        final darkTheme = ThemeData.dark().copyWith(
          primaryColor: Colors.blueGrey,
        );

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.isDarkMode ? darkTheme : lightTheme,
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          locale: _locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SplachScreen(),
          routes: {
            '/onboarding': (context) => const OnboardingScreen1(),
            '/onboarding2': (context) => const OnboardingScreen2(),
            '/onboarding3': (context) => const OnboardingScreen3(),
            '/onboarding4': (context) => const OnboardingScreen4(),
            '/logIn': (context) => LogIn(),
          },
        );
      },
    );
  }
}