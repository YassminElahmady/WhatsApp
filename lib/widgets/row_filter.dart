import 'package:flutter/material.dart';

class RowFilter extends StatelessWidget {
  const RowFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(' Recent Tasks',style: TextStyle(
            fontSize:16,fontWeight: FontWeight.w500
        ),),
        Container(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(),
          ),
          child: Row(

            children: [
              Icon(Icons.filter_list_alt,size: 16,),
              Text('filter'),
              Icon(Icons.keyboard_arrow_up_rounded),

            ],
          ),


        )
      ],
    );
  }
}
