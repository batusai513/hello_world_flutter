class TodoModel {
  final DateTime createdAt = DateTime.now();
  String text;
  bool isDone = false;
  TodoModel({this.text});
  toggleTodo() {
    this.isDone = !this.isDone;
  }
}