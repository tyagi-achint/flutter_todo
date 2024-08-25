class AddTask {
  String title;
  bool isChecked;

  AddTask({required this.title, this.isChecked = false});
}

List<AddTask> _tasksList = [
  AddTask(title: 'Achint'),
  AddTask(title: 'Task 2'),
  AddTask(title: 'Task 3'),
];

getTasksList() {
  return _tasksList;
}

// void _addTask(String title) {
//   setState(() {
//     _tasksList.add(AddTask(title: title));
//   });
// }
