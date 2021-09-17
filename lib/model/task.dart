class Task {
  final String title;
  bool isChecked;
  Task({this.title, this.isChecked = false});

  void changeState() {
    isChecked = !isChecked;
  }
}
