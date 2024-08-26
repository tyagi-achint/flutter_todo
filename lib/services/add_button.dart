import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  final Function(String) onAddTask;

  AddButton({required this.onAddTask});
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final TextEditingController _titleController = TextEditingController();

  void _pressed() {
    showModalBottomSheet(
        context: context, isScrollControlled: true, builder: buildBottomSheet);
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
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            right: 30,
            left: 30),
        width: double.infinity - 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            TextField(
              autofocus: true,
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
                if (_titleController.text.isNotEmpty) {
                  setState(() {
                    widget.onAddTask(_titleController.text);
                  });
                }
                Navigator.pop(context);
                _titleController.clear();
              },
              child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
