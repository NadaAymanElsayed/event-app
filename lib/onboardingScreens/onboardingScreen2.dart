import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/themeProvider.dart';
import '../utils/assetsManager.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('assets/lightMode/logo.png'),
              ],
              ),
              const SizedBox(height: 30,
              ),
              Row(
                children: [
                  Consumer<ThemeProvider>(
                    builder: (context, themeProvider, _){
                      String imagePath = themeProvider.isDarkMode
                          ? AssetsManager.onboarding2Dark
                          : AssetsManager.onboarding2Light;
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
                    Text('Find Events That Inspire You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 20
                    ),),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text('Dive into a world of events crafted to fit your unique interests. Whether you are into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect,and make the most of every opportunity around you.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 13,
                    ),),
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context,
                            '/onboarding3');
                      },
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                      padding: EdgeInsets.zero,
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
