import 'package:first_one/screens/login/todo_homescreen.dart';
import 'package:first_one/screens/login/welcomescreen.dart';
import 'package:first_one/widgets/custum_register_form_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            SizedBox(height: 12,),
           CustumRegisterFormField(
             validator: (value) {
               if(value!.trim().isEmpty){
                 return 'Name is required';
               }

             },
             hintText: 'Ahmed Mohamed',),
        SizedBox(height: 16,),
            Text('Email',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            SizedBox(height: 12,),
CustumRegisterFormField( validator: (value) {
  if(value!.trim().isEmpty){
    return 'password is required';
  }

}, hintText: 'example@email.com',),
            SizedBox(height: 16,),
            Text('password',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            SizedBox(height: 12,),
    InkWell(
    onTap: (){
      if (formKey.currentState!.validate()) {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) =>TodoHomescreen ()),
                (Route) => false);
      } },
    child: CustumRegisterFormField(
    validator: (value) {
    if(value!.isEmpty){
    return 'password is required';
    }
    },
    hintText: 'password',),
    ),
            SizedBox(height: 24,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xff2243A4),
              ),
              child: Center(child: Text('Register',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 16,
                color: Color(0xffFFFFFF),
              ),)),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 86),
              child: Row(

                children: [
                  Text('Already have an account',style: TextStyle(fontSize: 12),),
                  SizedBox(width: 4,),
                  Text('login',style: TextStyle(fontSize: 12,fontWeight:
                  FontWeight.w500,color: Color(0xff2243A4),),)
                ],
              ),
            )
       ], ),
      ),
    );
  }
}
