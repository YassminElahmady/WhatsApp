import 'package:first_one/widgets/task_statusmodel.dart';
import 'package:flutter/material.dart';

class HomeTasksContainer extends StatelessWidget {

 final TaskStatusModel taskStatusModel;
  const HomeTasksContainer({super.key, required this.taskStatusModel});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
     decoration: BoxDecoration(borderRadius:BorderRadius.circular(12),
      color:taskStatusModel.backgroungColor, ),
      child:Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(8),color: taskStatusModel.backgroundIconColor),
            child: Image.asset(taskStatusModel.imageIcon,)
            ,),
          SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(taskStatusModel.statusName,style: TextStyle(fontWeight: FontWeight.w500,
                color:Colors.white,fontSize:14, ),),
              Text('${taskStatusModel.numberOfTasks}Tasks',style: TextStyle(fontSize: 12,color:taskStatusModel.backgroundIconColor,)
              ),],
          )
        ],
      ) ,

    );
  }
}
