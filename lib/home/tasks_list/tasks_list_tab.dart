import 'package:flutter/material.dart';
import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:todolist/task_widget.dart';

class TasksListTab  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(

    children:[
        Container(

          height: 100,
            child:
            AnimatedHorizontalCalendar(
                  tableCalenderIcon: Icon(Icons.calendar_today, color: Colors.white,),
                  date: DateTime.now(),
                  textColor: Colors.black45,
                  backgroundColor: Colors.white,
                  tableCalenderThemeData:  ThemeData.light().copyWith(
                    primaryColor: Colors.green,
                    accentColor: Colors.red,
                    colorScheme: ColorScheme.light(primary: Colors.green),
                    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                  ),
                  selectedColor: Colors.redAccent,
                  onDateSelected: (date){
                   //selectedDate = date;
                  }
              ),


    ),
                Expanded(
                child:ListView.builder(itemBuilder: (_,index){
               return TaskWidget();

                  },itemCount:20,),




    ),
   ] );





  }
}
