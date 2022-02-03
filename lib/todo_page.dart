import 'package:flutter/material.dart';
import 'components/input_task_widget.dart';
import 'components/list_task_widget.dart';
import 'todo_controller.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  var controller = ToDoController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            const Text('Lista de Tarefas'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(17, 24, 17, 40),
              child: InputTaskWidget(
                labelText: 'Nova Tarefa',
                textButton: 'ADD',
                textController: controller.textController,
                onPressed: () {
                  setState(() {
                    controller.addToDo();
                  });
                },
              )),
          Expanded(
              child: ListTaskWidget(
                  listToDo: controller.listToDo,
                  onChanged: (value, index) => setState(() {
                        controller.updateStatusTask(value, index);
                      }), onRemoved: (index ) { 
                        setState(() {
                          controller.onRemovedTaskOfList(index);
                        });
                       },)),
        ],
      ),
    );
  }
}

