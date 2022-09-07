import 'package:animated_horizontal_calendar/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),

    child: Slidable(
      startActionPane:ActionPane(motion: DrawerMotion()
          ,children: [
            SlidableAction(onPressed: (_){
    },
      icon:Icons.delete,
      backgroundColor:Colors.red,
      label:'delete',
    )
      ],
      ),
      child: Container(
          decoration:BoxDecoration(
color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(24),
        


        child: Row(
          children: [
            Container(

              width: 8,
              height: 80,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor,
              ),
            ),
SizedBox(width: 8,),
Expanded(
  child:   Column(
       mainAxisAlignment:MainAxisAlignment.center ,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('this is title',style: Theme.of(context).textTheme.bodyMedium),
        Row(
          children: [
            Icon(Icons.access_time_sharp),
            Text('10:30 AM')
          ],
        )
  
      ],
  ),
),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                   color:Theme.of(context).primaryColor
              ),
              child: Icon(Icons.check,color: Colors.white,),

            )
          ],
        ),
           ),


    ));
  }
}
