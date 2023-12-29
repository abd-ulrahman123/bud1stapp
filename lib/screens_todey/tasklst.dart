import 'package:bud1stapp/modals/task.dart';
import 'package:bud1stapp/screens_todey/taskstile.dart';
import 'package:flutter/material.dart';

class Tasklst extends StatefulWidget {
  final List<Task> tasks;
  Tasklst(this.tasks);

  @override
  State<Tasklst> createState() => _TasklstState();
}
class _TasklstState extends State<Tasklst> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Taskstile(
          onLongPressCallback: () {
            setState(() {
              widget.tasks.remove(widget.tasks[index]);
            });
          },
          thetitle: widget.tasks[index].name,
          isDone: widget.tasks[index].doness,
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
