import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themeProvider.dart';
import '../utils/assetsManager.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/lightMode/logo.png'),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Consumer<ThemeProvider>(
                    builder: (context, themeProvider, _){
                      String imagePath = themeProvider.isDarkMode
                          ? AssetsManager.onboarding4Dark
                          : AssetsManager.onboarding4Light;
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
                    Text('Connect with Friends & Share Moments',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text('Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 110,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushReplacementNamed(context,
                          '/onboarding3');
                    },
                        icon: const Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.blueAccent,
                          size: 40,
                        ) ),

                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context,
                            '/logIn');
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
