import 'package:flutter/material.dart';
import 'package:hello_world/todo.dart';
import 'package:hello_world/todo_item.dart';

class Todos extends StatefulWidget {
  final List<TodoItem> initialTodos;
  const Todos({this.initialTodos});
  _TodosState createState() => new _TodosState();
}

class _TodosState extends State<Todos> {
  List<TodoItem> todos;
  void _addTodo(TodoItem todo) {
    setState(() {
      todos.add(todo);
    });
  }

  void _toggleTodo(TodoItem todo) {
    int index = todos.indexOf(todo);
    TodoItem _todo = todos[index];
    _todo.toggleTodo();
    setState(() {
      todos[index] = _todo;
    });
  }

  // initialize state from parameters
  @override
  void initState() {
    todos = widget.initialTodos;
    print(todos);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: todos.map((TodoItem todo) {
        return new Todo(
          key: ObjectKey(todo),
          todo: todo,
          onToggleTodo: _toggleTodo,
        );
      }).toList(),
    );
  }
}
