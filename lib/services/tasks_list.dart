import 'package:flutter/material.dart';

import '../Utilities/tasksList.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasksList.map(
        (task) {
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              activeColor: Colors.lightBlueAccent,
              checkColor: Colors.white,
              value: task.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  task.isChecked = value ?? false;
                });
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
