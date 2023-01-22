import 'package:flutter/material.dart';
import '../model/task_data.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

class ListTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataTask>(builder: (context, value, child) {
      return ListView.builder(
        itemCount: value.myData.length,
        itemBuilder: (context, index) {
          return TaskTile(
              TaskTitle: value.myData[index].name,
              check: value.myData[index].isDone,
              ischeck: (newvalue) {
                value.update(value.myData[index]);
              },
              remove: () {
                value.delete(value.myData[index]);
              });
        },
      );
    });
  }
}
