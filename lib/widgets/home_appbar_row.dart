
import 'package:flutter/material.dart';

class HomeAppbarRow extends StatelessWidget {
  const HomeAppbarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello 😉',style: TextStyle(color: Color(0xff797979),
              ),),
              Text('Yassmin Elahmady',style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w500 ),),
            ],
          ),
        ),
        CircleAvatar(radius: 24,backgroundColor: Color(0xffF5F5F5),
            child:
            IconButton(onPressed: (){}, icon: Image.asset('assets/images/bell (2) 1.png',height: 20,width: 20,)))

      ],
    );
  }
}
