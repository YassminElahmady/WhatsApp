import 'package:first_one/core_share_widgets/widget/items_widget.dart';
import 'package:first_one/widgets/home_appbar_row.dart';
import 'package:first_one/widgets/home_tasks_container.dart';
import 'package:first_one/widgets/row_filter.dart';
import 'package:first_one/widgets/task_statusmodel.dart';
import 'package:flutter/material.dart';

class TodoHomescreen extends StatelessWidget {
  const TodoHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 16),
              child: ListView(
                children: [
                  HomeAppbarRow(),
                  SizedBox(height: 24,),
                  GridView.count(shrinkWrap: true,
                    childAspectRatio: 3,
                    crossAxisSpacing: 17,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,children:
                  List.generate(taskStatusList.length, (index)=>HomeTasksContainer(
                    taskStatusModel:taskStatusList[index],
                  ),),),
                  SizedBox(height: 24,),
                  Divider(thickness: 1,color: Colors.black12,),
                  SizedBox(height: 16,),
                 RowFilter(),
                  SizedBox(height: 12,),
                  ListView.separated(shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index) =>ItemsWidget(), separatorBuilder:(context,index) => SizedBox(height: 16), itemCount: 10),
                ],

              ),
            ),

          ),

    );

  }
}
