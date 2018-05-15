import 'package:flutter/material.dart';
import 'package:hello_world/todo_item.dart';

typedef void OnToggle(TodoItem todo);

class Todo extends StatelessWidget {
  final TodoItem todo;
  final OnToggle onToggleTodo;

  const Todo({Key key, this.todo, this.onToggleTodo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        onTap: () {
          onToggleTodo(todo);
        },
        leading: Icon( todo.isDone ? Icons.cake : Icons.brush ),
        title: Text(
          todo.text,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
