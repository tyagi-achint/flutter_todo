import 'package:flutter/material.dart';

_pressed() {
  return print("Hello");
}

addButton() {
  return FloatingActionButton(
    backgroundColor: Colors.blue,
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
