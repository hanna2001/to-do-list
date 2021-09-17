import 'package:flutter/material.dart';
import 'package:todoey/model/task_list_notifier.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListListener>(
      create: (context) {
        return TaskListListener();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
