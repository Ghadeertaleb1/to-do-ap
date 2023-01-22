import 'package:flutter/material.dart';
import 'task.dart';

class DataTask extends ChangeNotifier {
  List<Task> myData = [
    Task(name: "Reading"),
    Task(name: "Shopping"),
    Task(name: "playing"),
  ];
  void addData(String newData) {
    myData.add(Task(name: newData));
    notifyListeners();
  }

  void update(Task newTask) {
    newTask.change();
    notifyListeners();
    print("update");
  }

  void update2(Task newTask) {
    newTask.change();
    notifyListeners();
    print("update2");
  }

  void delete(Task newTask) {
    myData.remove(newTask);
    print("delete");
    print(myData);
    notifyListeners();
  }
}
