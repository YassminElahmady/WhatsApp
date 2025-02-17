import 'package:first_one/cubit/bmi_cubit/bmi_cubit.dart';
import 'package:first_one/screens/BMI_homescreen/BMI_homescreen.dart';
import 'package:first_one/screens/create_tasks/create_task_screen.dart';
import 'package:first_one/screens/login/food_signup_screen.dart';
import 'package:first_one/screens/login/register_screen.dart';
import 'package:first_one/screens/login/todo_homescreen.dart';
import 'package:first_one/screens/login/todo_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      //title: 'WhatsApp Chat',
      home:
      BlocProvider(
        create: (context) => BmiCubit(),
        child: BmiHomescreen(),
      ),
      //CreateTaskScreen(),
      //TodoHomescreen(),
      //FoodSignupScreen(),
      //RegisterScreen(),
      //TodoLoginScreen(),
      // WhatsappMessage(),
      //InstgramScreen(),
      //WelcomeScreen(),
      //SignUpScreen(),
      //LoginScreen(),
      //EmailScreen(),


    );
  }
}