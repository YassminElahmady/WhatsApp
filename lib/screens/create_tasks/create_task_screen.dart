import 'package:flutter/material.dart';


import '../../widgets/create_new_task_widget/form_field_todo.dart';
import '../../widgets/row_create_task.dart';


class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RowCreateTask(iconsData: Icons.arrow_back_ios_new_outlined,),
            const SizedBox(height: 24,),
            const Text('Task Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
            const SizedBox(height: 12,),
            const FormFieldTodo(hintText: 'new task',
            ),
            const SizedBox(height: 20,),
        const Text('Note',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
            const SizedBox(height: 12,),
            const FormFieldTodo(
              hintText: 'Note',
            ),
            const SizedBox(height: 20,),
            const Text('Date',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Text('June 2024',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),
                Icon(Icons.keyboard_arrow_right_outlined,color:Color(0xff2243A4)),
        Spacer(),
                Icon(Icons.arrow_back_ios_new_outlined,color:Color(0xff2243A4),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios_outlined,color:Color(0xff2243A4),),

              ],
            ),
       // const SizedBox(height: 20,),

          ],


        ),


      ),
    );
  }
}
