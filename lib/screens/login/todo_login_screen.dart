import 'package:first_one/widgets/login_form.dart';
import 'package:first_one/widgets/task_statusmodel.dart';
import 'package:flutter/material.dart';

class TodoLoginScreen extends StatelessWidget {
  const TodoLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:50),
            Image.asset('assets/images/splash_logo.png',width: 101,height: 101,),
            SizedBox(height: 60,),
            Text('Login',style: TextStyle(fontWeight:FontWeight.w600,
            fontSize: 24,),),
            SizedBox(height: 8,),
            Text('Login to your account',style: TextStyle(fontWeight:FontWeight.w400,
              fontSize: 14,color: Color(0xff797979),),),
            SizedBox(height: 32,),
            LoginForm(),


          ],
        ),
      ),

    );
  }
}
