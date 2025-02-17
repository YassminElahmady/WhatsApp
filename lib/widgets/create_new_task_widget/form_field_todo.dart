import 'package:flutter/material.dart';

class FormFieldTodo extends StatelessWidget {
   final String hintText;

  const FormFieldTodo({super.key, required this.hintText,});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration:
      InputDecoration(hintText:hintText ,
          hintStyle: TextStyle(color: Color(0xff797979)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), )),


    );
  }
}
