import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors/colors.dart' as color;


class TaskTile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String TaskTitle;
  final bool check;
  final void Function(bool?) ischeck;
  final void Function()? remove;

  const TaskTile({
    super.key,
    required this.TaskTitle,
    required this.check,
    required this.ischeck,
    required this.remove,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TaskTitle,
          style: TextStyle(
            color: color.AppColor.tasksfont,
            fontSize: 15,
            decoration: check ? TextDecoration.lineThrough : null,
          )),
      leading: Checkbox(
        activeColor: color.AppColor.homepagecolor,
        onChanged: ischeck,
        value: check,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: remove,
        
      ),
    );
  }
}
