import 'package:flutter/material.dart';
import '../Utilities/tasks.dart';

class TasksList extends StatefulWidget {
  final Function(int) onDeleteTask;

  TasksList({required this.onDeleteTask});
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
            tasks[index].title,
            style: TextStyle(
              decoration: tasks[index].isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  activeColor: Colors.lightBlueAccent,
                  checkColor: Colors.white,
                  value: tasks[index].isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      tasks[index].isChecked = value ?? false;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => widget.onDeleteTask(index),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: tasks.length,
    );
  }
}
