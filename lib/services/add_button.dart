import 'package:flutter/material.dart';
import '../Utilities/tasksList.dart';
import 'add_tasks.dart';

class AddButton extends StatefulWidget {
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final TextEditingController _titleController = TextEditingController();

  void addTask(String title) {
    if (title.isNotEmpty) {
      setState(() {
        tasksList.add(AddTask(title: title));
      });
    }
  }

  void _pressed() {
    showModalBottomSheet(context: context, builder: buildBottomSheet);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      onPressed: _pressed,
      tooltip: 'Add Task',
      shape: CircleBorder(),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity - 50,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add Task",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _titleController,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.lightBlueAccent),
              ),
              onPressed: () {
                addTask(_titleController.text);
                _titleController.clear();

                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
