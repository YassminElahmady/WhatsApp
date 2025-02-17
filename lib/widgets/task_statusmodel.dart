
import 'package:flutter/cupertino.dart';

class TaskStatusModel{
   String statusName;
   int numberOfTasks ;
   String imageIcon ;
   Color backgroungColor ;
   Color backgroundIconColor ;

   TaskStatusModel (

   {
     required this.statusName,required this.numberOfTasks,required this.imageIcon,
     required this.backgroungColor,
     required this.backgroundIconColor
});

}
List<TaskStatusModel> taskStatusList=[
  TaskStatusModel(statusName: 'New Task', numberOfTasks: 12, imageIcon: 'assets/images/newtask.png', backgroungColor: Color(0xff5679DD), backgroundIconColor: Color(0xff89A1E7)),
  TaskStatusModel(statusName: 'In Progress', numberOfTasks: 12, imageIcon: 'assets/images/inprogress.png', backgroungColor: Color(0xffEF9645), backgroundIconColor: Color(0xffF4B57D)),
  TaskStatusModel(statusName: 'Completed', numberOfTasks: 12, imageIcon: 'assets/images/completed.png', backgroungColor: Color(0xff64CFB4), backgroundIconColor: Color(0xff83D9C2)),
  TaskStatusModel(statusName: 'Out Dated', numberOfTasks: 12, imageIcon: 'assets/images/outdated.png', backgroungColor: Color(0xffDC4481), backgroundIconColor: Color(0xffE77CA7)),

];

