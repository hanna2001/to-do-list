import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_list_notifier.dart';

class TaskTile extends StatelessWidget {
  final bool state;
  final String title;
  final Function toggle;
  final Function delete;
  TaskTile({this.title, this.state, this.toggle, this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: delete,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            decoration: state ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: state, onChanged: toggle),
    );
  }
}
