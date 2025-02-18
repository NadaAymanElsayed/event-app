import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushReplacementNamed(context,
          '/onboarding');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/lightMode/splachScreen.png'),
      ) ,
    );
  }
}
