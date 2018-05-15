class TodoItem {
  final DateTime createdAt = DateTime.now();
  String text;
  bool isDone = false;
  TodoItem({this.text});
  toggleTodo() {
    this.isDone = !this.isDone;
  }
}
