import 'package:flutter/material.dart';
import '../Utilities/tasks.dart';
import '../services/tasks_list.dart';

class Tasks extends StatefulWidget {
  @override
  State<Tasks> createState() => _Tasks();
}

class _Tasks extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.fromLTRB(30, 70, 0, 30),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.list,
                  color: Colors.lightBlueAccent,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Todo',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Text(
                '$tasksCount Tasks',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.topLeft,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: TasksList(
              onDeleteTask: _deleteTask,
            ),
          ),
        )
      ],
    );
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
      tasksCount = tasks.length;
    });
  }
}
