import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_list_notifier.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/widgets/task_tile.dart';

class AddTask extends StatelessWidget {
  @override
  String newTaskName;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 24),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (val) {
                  newTaskName = val;
                },
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  if (newTaskName != null)
                    Provider.of<TaskListListener>(context, listen: false)
                        .addTask(newTaskName);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add Task',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
