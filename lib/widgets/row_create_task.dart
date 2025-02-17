import 'package:flutter/material.dart';

class RowCreateTask extends StatelessWidget {
  final IconData iconsData;
  const RowCreateTask({super.key, required this.iconsData});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius:15 ,backgroundColor: Color(0xffF5F5F5),
          child: Icon(iconsData),
        ) ,
        SizedBox(width: 12,),
        Text('Create New Task',style: TextStyle(fontWeight: FontWeight.w500,
            fontSize: 16),),
      ],
    );
  }
}
