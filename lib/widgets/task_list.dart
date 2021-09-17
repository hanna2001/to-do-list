import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_list_notifier.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/model/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = Provider.of<TaskListListener>(context).tasksList[index];
        return TaskTile(
          title: task.title,
          state: task.isChecked,
          toggle: (val) {
            Provider.of<TaskListListener>(context, listen: false)
                .alterTask(task);
          },
          delete: () {
            Provider.of<TaskListListener>(context, listen: false)
                .deleteTask(task);
          },
        );
      },
      itemCount: Provider.of<TaskListListener>(context).tasksList.length,
    );
  }
}
