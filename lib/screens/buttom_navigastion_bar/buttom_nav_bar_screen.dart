import 'package:first_one/screens/login/todo_homescreen.dart';
import 'package:first_one/screens/login/todo_login_screen.dart';
import 'package:flutter/material.dart';

class ButtomNavBarScreen extends StatefulWidget {
  const ButtomNavBarScreen({super.key});

  @override
  State<ButtomNavBarScreen> createState() => _ButtomNavBarScreenState();
}

class _ButtomNavBarScreenState extends State<ButtomNavBarScreen> {
  int _currentIndex=0;
  List screens=[
    TodoHomescreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffDDE2F3),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          _currentIndex==0?ActiveButtomNavBarIcon(icon: Icons.home, title: 'Home'):
              ButtomNavBarIcon(icon: Icons.home,onTap: (){
                setState(() {
                  _currentIndex=0;
                });
              },),
            _currentIndex==1?ActiveButtomNavBarIcon(icon: Icons.add, title: 'Add Task'):
            ButtomNavBarIcon(icon: Icons.add,onTap: (){
    setState(() {
    _currentIndex=1;
    });}),
            _currentIndex==2?ActiveButtomNavBarIcon(icon: Icons.person, title: 'Profile'):
            ButtomNavBarIcon(icon: Icons.person,onTap: (){
    setState(() {
    _currentIndex=2;
    });}),

          ],
        ),
      ),
      body: TodoHomescreen(),
    );
  }
}
class ActiveButtomNavBarIcon  extends StatelessWidget {
   final String title;
  final IconData icon ;
  const ActiveButtomNavBarIcon({super.key, required this.icon,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(vertical: 18,horizontal: 54),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: Color(0xff2243A4),
    ),
    child: Row(children: [
    Icon(icon,color: Colors.white,),
    SizedBox(width: 5,),
    Text(title,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),)
    ],),
    );
  }
}

 class ButtomNavBarIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const ButtomNavBarIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: CircleAvatar(backgroundColor: Color(0xffE7EBF7),
        child: Icon(icon,size: 30,),
      ),
    );
  }
}

