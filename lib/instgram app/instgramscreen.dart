import 'package:flutter/material.dart';

class InstgramScreen extends StatelessWidget {
  const InstgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: Colors.black,
        appBar:AppBar(backgroundColor: Colors.black,
          leading: DrawerButton(onPressed: (){
            Scaffold.of(context).openEndDrawer();
          },),
          title:
              Text('Yassmin Elahmady',style: TextStyle(color: Colors.white),) ,
              actions: [ IconButton(icon: Icon(Icons.expand_more,),onPressed: (){},),
               IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined,
                  color: Colors.white,),
                ),

                  IconButton(onPressed: (){}, icon: Icon(Icons.alternate_email),
                    color: Colors.white,),

                ]
        ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/26713352/pexels-photo-26713352/free-photo-of-audi-s4-sports-car-on-the-road.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'), // Replace with profile image
                  ),
                  SizedBox(width: 200,),
                  Column(
                    children:  [
                      Text('58', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                        color: Colors.white,)),
                      SizedBox(width: 200,),
                      Text('Posts',style:TextStyle(color: Colors.white)),
                      SizedBox(width: 200,),
                    ],
                  ),

                  Column(
                    children:  [
                      Text('54', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white)),
                      Text('Followers',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Column(
                    children:  [
                      Text('12', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
                        color: Colors.white,)),
                      SizedBox(width: 200,),
                      Text('Following',style: TextStyle(color: Colors.white)),
                    ],
                  ),

                ] ),

SizedBox(height: 20,),
       Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Your Fav Eng😎',style: TextStyle(color: Colors.white),),
           Text('Take everything easy',style: TextStyle(color: Colors.white),),
           Text('www.facebook.com/fluttercourse',style: TextStyle(color: Colors.white),),
         ],
       ),

          SizedBox(width: 20,),

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 30,width:300,decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadiusDirectional.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Edit Profile',),

                  ],

                ),
              ),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Container(height: 30,width:300,decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadiusDirectional.circular(10),),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('Edit Profile',),

                  ],

                ),
              ),
            ],
          ),
          SizedBox(width: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/26713352/pexels-photo-26713352/free-photo-of-audi-s4-sports-car-on-the-road.jpeg'),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/26713352/pexels-photo-26713352/free-photo-of-audi-s4-sports-car-on-the-road.jpeg'),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/26713352/pexels-photo-26713352/free-photo-of-audi-s4-sports-car-on-the-road.jpeg'),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/26713352/pexels-photo-26713352/free-photo-of-audi-s4-sports-car-on-the-road.jpeg'),
              ),
            ],
          ),
          SizedBox(height: 20),
          // البايو

        ],

      ),
      

);
  }
}