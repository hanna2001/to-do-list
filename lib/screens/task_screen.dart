import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todoey/model/task_list_notifier.dart';
import 'package:todoey/widgets/add_task.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/model/task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 40,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskListListener>(context).tasksList.length} tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTask(),
              isScrollControlled: true);
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
