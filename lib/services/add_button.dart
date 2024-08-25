import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  _pressed() {
    // addTaskToList('Achint');
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
}
