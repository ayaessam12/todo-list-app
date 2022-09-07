import 'package:flutter/material.dart';
import 'package:todolist/home/add_task_bottom_shet.dart';
import 'package:todolist/home/settings/setting_tab.dart';
import 'package:todolist/home/tasks_list/tasks_list_tab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

     leading: Container(

       width: 90,
       height: 70,
       child:Image.asset('assets/to-do.png'),
     ),
     // title:Text('Todo List'), 
    ),

bottomNavigationBar: BottomAppBar(
  shape:CircularNotchedRectangle(),
        notchMargin: 8,
        child:BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,



        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),

        ],
        ),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(
        shape: StadiumBorder(

        side:BorderSide(color: Colors.white,width: 4)
      ),
            onPressed: (){

    },
      child: Icon(Icons.add),
      ),
      body:tabs[selectedIndex],
    );
  }
var tabs=[TasksListTab(),SettingsTab()];
  void showAddTaskBottomSheet(){
    showModalBottomSheet(context: context, builder:(buildContext){
      return AddTaskBottomSheet();
    });

  }

}
