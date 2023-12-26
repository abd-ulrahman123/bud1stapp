import 'package:flutter/material.dart';

class Taskstile extends StatefulWidget {
  final String thetitle;
  bool isDone;
  final Function() onLongPressCallback;
  Taskstile(
      {required this.thetitle,
      required this.isDone,
      required this.onLongPressCallback});

  @override
  State<Taskstile> createState() => _TaskstileState();
}

class _TaskstileState extends State<Taskstile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.onLongPressCallback,
      title: Text(widget.thetitle,
          style: TextStyle(
              fontWeight: FontWeight.w300,
              decoration: widget.isDone ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: widget.isDone,
        onChanged: (value) {
          setState(() {
            widget.isDone = !widget.isDone;
          });
        },
      ),
    );
  }
}
