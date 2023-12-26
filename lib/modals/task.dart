class Task {
  String name;
  bool doness = false;
  void doneit() {
    doness = !doness;
  }

  Task({required this.name});
}
