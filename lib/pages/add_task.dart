import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  final Function addTask;

  AddTask(this.addTask);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Add Task",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.redAccent),),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (val){
                  newTask = val;
                },
              ),
              SizedBox(height: 40,),
              FlatButton(
                  onPressed: (){
                      widget.addTask(newTask);
                      Navigator.pop(context);
                  },
                  child: Text("Add",style: TextStyle(color: Colors.red,fontSize: 30),),
                color: Colors.black87,
              )
            ],
          ),
        ) ,
    );
  }
}
