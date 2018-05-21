import 'package:flutter/material.dart';
import 'package:hello_world/todo.dart';
import 'package:hello_world/todo_model.dart';
import 'package:flutter/foundation.dart'; //user for required anotation

class TodoList extends StatelessWidget {
  const TodoList({Key key, this.toggleTodo, @required this.todos})
      : super(key: key);

  final List<TodoModel> todos;
  final toggleTodo;

  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: todos.map((TodoModel todo) {
          return new Todo(
            key: ObjectKey(todo),
            todo: todo,
            onToggleTodo: toggleTodo,
          );
        }).toList(),
      ),
    );
  }
}
