import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:to_do_app/Models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

  TaskList(this.taskList);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
          return TaskTile(widget.taskList[index].state, widget.taskList[index].name, (bool val){
            setState(() {
              widget.taskList[index].complated();
            });
          });
        },
        itemCount: widget.taskList.length ,
    );
  }
}
