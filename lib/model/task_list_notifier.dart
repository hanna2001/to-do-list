import 'package:flutter/material.dart';
import 'task.dart';

class TaskListListener extends ChangeNotifier {
  List<Task> tasksList = [];

  void addTask(String newTask) {
    tasksList.add(Task(title: newTask));
    notifyListeners();
  }

  void alterTask(Task task) {
    task.changeState();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasksList.remove(task);
    notifyListeners();
  }
}
