import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/colors/colors.dart' as color;
import '../model/task_data.dart';
import '../widget/List_Task.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            )),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: color.AppColor.homepagecolor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Icon(
                  Icons.menu_sharp,
                  color: color.AppColor.homepageicon,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "To Day Do ",
                  style: TextStyle(
                    color: color.AppColor.homepagefont,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${Provider.of<DataTask>(context, listen: true).myData.length} Tasks ",
              style: TextStyle(
                color: color.AppColor.homepagefont,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: color.AppColor.homepagefont,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTask(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
