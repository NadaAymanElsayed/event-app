import 'package:event/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/themeProvider.dart';
import '../utils/assetsManager.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/lightMode/logo.png'),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ThemeProvider>(
                  builder: (context, themeProvider, _){
                    String imagePath = themeProvider.isDarkMode
                        ? AssetsManager.onboarding1Dark
                        : AssetsManager.onboarding1Light;
                    return Image.asset(
                      imagePath,
                      width: 300,
                      height: 300,
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Text('Personalize Your Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),)
              ],
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0 , right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.language,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                  ),),
                  IconButton(onPressed: (){ Locale currentLocale = Localizations.localeOf(context);
                  Locale newLocale = currentLocale.languageCode == 'en' ? const Locale('ar') : const Locale('en');
                  MyApp.of(context)!.setLocale(newLocale);
                  }, icon: const Icon(Icons.toggle_on))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0 , right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.theme,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.blue
                    ),),
                    Consumer<ThemeProvider>(
                     builder: (context, themeProvider, _) {
                        return IconButton(
                      icon: const Icon(Icons.toggle_on),
                      onPressed: () {
                       themeProvider.toggleTheme();
    },
    );
    },
    )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context,
                    '/onboarding2');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child:  Text(AppLocalizations.of(context)!.letsStart,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );

  }
}
