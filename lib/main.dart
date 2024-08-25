import 'package:flutter/material.dart';

import 'screens/tasks_screen.dart';
import 'services/add_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: SafeArea(
        child: Scaffold(
          body: Tasks(),
          floatingActionButton: addButton(),
        ),
      ),
    );
  }
}
