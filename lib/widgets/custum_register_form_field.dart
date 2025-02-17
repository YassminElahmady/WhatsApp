import 'package:flutter/material.dart';

class CustumRegisterFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType? keyboardType;
  const CustumRegisterFormField({super.key,required this.validator, required this.hintText, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator:validator ,
        keyboardType:keyboardType,
        decoration: InputDecoration(
        hintText:hintText ,
          hintStyle: TextStyle(color: Color(0xff797979),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff2243A4),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
    ),);
  }
}
