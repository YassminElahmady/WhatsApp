import 'package:first_one/widgets/register_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(height:50),
    Image.asset('assets/images/splash_logo.png',width: 101,height: 101,),
    SizedBox(height: 16,),
    Text('Create Account',style: TextStyle(fontWeight:FontWeight.w600,
    fontSize: 24,),),
    SizedBox(height: 8,),
    Text('Create a new account for free',style: TextStyle(fontWeight:FontWeight.w400,
    fontSize: 14,color: Color(0xff797979),),),
    SizedBox(height: 32,),
RegisterForm(),
  ],

        ),
        ),

    );
  }
}
