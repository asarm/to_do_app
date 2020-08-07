import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool choose;
  final String taskName;
  final Function checkboxCallback;

  TaskTile(this.choose, this.taskName, this.checkboxCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,style: TextStyle(
        color: Colors.white,
        decoration: choose ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(value: choose, onChanged: checkboxCallback, activeColor: Colors.red,),
    );
  }
}