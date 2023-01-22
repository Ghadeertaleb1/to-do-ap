import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors/colors.dart' as color;
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          textAlign: TextAlign.center,
          "Add Task",
          style: TextStyle(
            color: Colors.indigo[400],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: ((value) {
            newTask = value;
          }),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Provider.of<DataTask>(context, listen: false).addData(newTask);
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: color.AppColor.homepagecolor),
            child: const Text(
              "add",
              style: TextStyle(
                fontSize: 20,
              ),
            ))
      ]),
    );
  }
}
