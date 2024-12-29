import 'package:first_one/instgram%20app/instgramscreen.dart';
import 'package:first_one/screens/login/logiin.dart';
import 'package:first_one/screens/login/loginscreen.dart';
import 'package:first_one/screens/login/signup.dart';
import 'package:first_one/screens/login/welcomescreen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'WhatsApp Chat',
    home:
    // WhatsappMessage(),
    InstgramScreen(),
      //WelcomeScreen(),
      //SignUpScreen(),
      //LoginScreen(),
      //EmailScreen(),


    );
  }
}