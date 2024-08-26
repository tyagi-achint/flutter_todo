import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List tasks;
  TasksList({required this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            widget.tasks[index].title,
            style: TextStyle(
              decoration: widget.tasks[index].isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            checkColor: Colors.white,
            value: widget.tasks[index].isChecked,
            onChanged: (bool? value) {
              setState(() {
                widget.tasks[index].isChecked = value ?? false;
              });
            },
          ),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
