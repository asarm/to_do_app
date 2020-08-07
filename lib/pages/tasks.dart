import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/pages/add_task.dart';
import 'package:to_do_app/pages/task_list.dart';
import 'package:to_do_app/Models/task.dart';

class TasksView extends StatefulWidget {
  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  List<Task> taskList = [
    Task(name: "Update Github Profile"),
    Task(name: "Study Flutter"),
    Task(name: "Review Python"),
    Task(name: "Go to the Gym"),
  ];

  Widget buildModalSheet(BuildContext context){
    return Container(
      child: Center(
        child: Text("Modal"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder:(context) => AddTask((newTask){
                    setState(() {
                      taskList.add(Task(name: newTask));
                    });
            })
            );
          },
          child: Icon(Icons.add,color: Colors.redAccent,),
          backgroundColor: Colors.black87,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.list,size: 28,color: Colors.redAccent,),
                    backgroundColor: Colors.black87,
                    radius: 25,
                  ),
                  SizedBox(height: 30,),
                  Text("Task Manager",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w900),),
                  SizedBox(height: 15,),
                  Text("Total tasks:",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  SizedBox(height:10),
                ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
              ),
              child: TaskList(taskList),
            ),
          ),
        ],
      ) ,
    );
  }
}
