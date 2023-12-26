import 'package:bud1stapp/screens_todey/addtasck.dart';
import 'package:bud1stapp/screens_todey/tasklst.dart';
import 'package:flutter/material.dart';
import 'package:bud1stapp/modals/task.dart';

//SOME DECORS TO ADD BETWEEN WIDGETS
//I LL ADD SOME PROVIDER CLASS
class Taskscreen extends StatefulWidget {
  @override
  State<Taskscreen> createState() => _TaskscreenState();
}

class _TaskscreenState extends State<Taskscreen> {
  List<Task> tasks = [];
  void rmvTask(Task()) {
    setState(() {
      tasks.remove(Task());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Addtask((nameTask) {
                    setState(() {
                      tasks.add(Task(name: nameTask));
                    });
                    Navigator.pop(context);
                  }));
        },
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            padding:
                const EdgeInsets.only(top: 40, right: 30, left: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  foregroundColor: Colors.lightBlueAccent,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "قائمة المهام",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "${tasks.length}مهمات",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Tasklst(tasks)),
          ),
        ],
      ),
    );
  }
}
//needa add smth?
//going leetcode soon
