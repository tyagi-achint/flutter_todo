import 'package:flutter/material.dart';

import 'add_tasks.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List _tasksList = getTasksList();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _tasksList.map((task) {
        return ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.isChecked,
            onChanged: (bool? value) {
              setState(() {
                task.isChecked = value ?? false;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
