import 'package:flutter/material.dart';


class Addtask extends StatelessWidget {
  Function namingTask;
  Addtask(this.namingTask);
  @override
  Widget build(BuildContext context) {
    String? nameTask;
    return Container(
      color: const Color(0xff757575),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "أضف مهمة",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  onChanged: (value) => nameTask = value,
                  decoration: InputDecoration(
                    labelText: 'اسم المهمة',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    namingTask(nameTask);
                  },
                  child: const Text("أضف مهمة"),
                ),
              ),
            ],
          )),
    );
  }
}
//adding tasklist file
