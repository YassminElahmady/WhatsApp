import 'package:first_one/screens/buttom_navigastion_bar/buttom_nav_bar_screen.dart';
import 'package:first_one/screens/login/welcomescreen.dart';
import 'package:first_one/widgets/custum_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key:formKey ,

        child:
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Email',style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),),
        SizedBox(height: 12,),
CustumTextFormField(
  validator: (value) {
    if(value!.trim().isEmpty){
      return 'Email is required';
    }

  },
  hintText: 'example@email.com',),
          SizedBox(height: 16,),
          Text('password',style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),),
          SizedBox(height: 12,),
          CustumTextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return 'password is required';
              }

            },
            hintText: 'password',),
          SizedBox(height: 24,),
          InkWell(
            onTap: (){
              if (formKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => ButtomNavBarScreen()), (
                      Route) => false,);
              } },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 14.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xff2243A4),
              ),
              child: Center(child: Text('Login',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 16,
                color: Color(0xffFFFFFF),
              ),)),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82.5),
            child: Row(

              children: [
                Text('Don’t have an account?',style: TextStyle(fontSize: 12),),
                SizedBox(width: 4,),
                Text('Create account',style: TextStyle(fontSize: 12,fontWeight:
                FontWeight.w500,color: Color(0xff2243A4),),)
              ],
            ),
          )

      ],

      ),
    ));
  }
}
