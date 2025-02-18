import 'package:event/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LogIn extends StatefulWidget {
    LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
     bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/lightMode/splachScreen.png')
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                labelText: AppLocalizations.of(context)!.email,
                                hintText: AppLocalizations.of(context)!.enterValidEmail
                      ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.password,
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      )
                    ),
                  ),
                ],
              ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 62),
                  child: Text(AppLocalizations.of(context)!.forgetYourPassword,
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ]
            ),
          ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child:  Text(AppLocalizations.of(context)!.logIn,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(AppLocalizations.of(context)!.dontHaveAccount,
                          style: const TextStyle(
                            fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,),
                        child: Text(AppLocalizations.of(context)!.createAccount,
                          style: const TextStyle(
                            fontSize: 14,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),),
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width / 4,  // نصف عرض الشاشة
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Text(AppLocalizations.of(context)!.or
                    , style: const TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400
                  ),),
                  const SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width / 4,  // نصف عرض الشاشة
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.blueAccent,
                    width: 2,
                  ),
                  backgroundColor: Colors.transparent,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/lightMode/google.png'),
                    const SizedBox(width: 10,),
                    Text(AppLocalizations.of(context)!.logInWithGoogle,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ) ,
        )
    );
  }
}
