import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 4,
                  child: Text('Flutter Practice',style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16,),)),
              SizedBox(height: 12,),
              Expanded(flex: 2,child: Text('Today',style: TextStyle(fontSize: 12,color: Color(0xff797979)),)),
            ],
          ),
          SizedBox(height: 5,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 2
                  ,child: Text('Todo Application',style: TextStyle(fontSize: 12,color: Color(0xff797979)),)),
              Expanded(flex:1
                  , child: Text('12:30 PM - 01:30 PM',style: TextStyle(fontSize: 12,color: Color(0xff797979)),)),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                    color: Colors.blue),

                  child: Text('New Task',style: TextStyle(color: Colors.white,fontSize:14,fontWeight:FontWeight.w500),),
                ),

              ),
              TextButton(onPressed: (){}, child: Text('Change Status',style: TextStyle(fontWeight: FontWeight.w500,
                  color: Color(0xff2243A4),decoration: TextDecoration.underline),))

            ],
          )

        ],
      ),
    );
  }
}
