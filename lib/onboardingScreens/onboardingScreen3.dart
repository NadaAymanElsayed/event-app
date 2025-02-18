import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themeProvider.dart';
import '../utils/assetsManager.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

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
             const SizedBox(height: 20,),
              Row(
                children: [
                  Consumer<ThemeProvider>(
                    builder: (context, themeProvider, _){
                      String imagePath = themeProvider.isDarkMode
                          ? AssetsManager.onboarding3Dark
                          : AssetsManager.onboarding3Light;
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
                    Text('Effortless Event Planning',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text('Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushReplacementNamed(context,
                          '/onboarding2');
                    },
                        icon: const Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.blueAccent,
                          size: 40,
                        ) ),

                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context,
                            '/onboarding4');
                      },
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
