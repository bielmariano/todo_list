import 'package:flutter/material.dart';
import 'todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula 4 - To Do List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0XFFC1007E),
            secondary: const Color(0XFF9E9E9E),
          ),
          toggleableActiveColor: const Color(0XFFC1007E),
          iconTheme: const IconThemeData(color: Color(0XFFC1007E)),
          listTileTheme: const ListTileThemeData(iconColor: Color(0XFFC1007E))),
      home: const TodoPage(),
    );
  }
}
