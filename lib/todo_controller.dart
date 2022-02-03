import 'package:flutter/material.dart';

import 'models/task_model.dart';

class ToDoController{
    TextEditingController textController = TextEditingController();

  List<TaskModel> listToDo = [];

  void addToDo() {
    if(textController.text.isNotEmpty) {

    
    var newTask = TaskModel(desc: textController.text);
    listToDo.add(newTask);
    textController.text = '';
    }
  }

  void updateStatusTask(bool? value, int index) {
    listToDo[index].completed = value ?? false;
  }

  void onRemovedTaskOfList(int index) {
    listToDo.removeAt(index);
  }
}