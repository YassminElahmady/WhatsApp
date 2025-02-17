import 'package:flutter/material.dart';

class FoodSignupScreen extends StatelessWidget {
  const FoodSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        leading:
       Stack(children: <Widget>[
         CircleAvatar(
           backgroundColor: Colors.white,
         )

       ],
       )
      ),

      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sign Up',style: TextStyle(
            fontWeight:FontWeight.w700,
            fontSize: 30,
            color: Colors.white,


          ),),
      SizedBox(height: 3,),
      Text('Please sign up to get started',style: TextStyle(
       fontSize: 16,color: Colors.white
      ),),
TextField(decoration:InputDecoration(
  hintStyle:TextStyle(color: Colors.grey),
) ,

)
    ],),

    );
  }
}
