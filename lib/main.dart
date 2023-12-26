import 'package:bud1stapp/screens_todey/taskscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyTodey());
}

class MyTodey extends StatelessWidget {
  const MyTodey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "TODEY", home: Taskscreen());
  }
}
