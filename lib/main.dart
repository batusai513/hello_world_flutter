import 'package:flutter/material.dart';
import 'package:hello_world/todo_model.dart';
import 'package:hello_world/todo_list.dart';

// main: application start point
// runnApp: creates a new flutter App
void main() => runApp(
      HelloWorld(),
    );

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hell world',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Todos App'),
          ),
          body: TodoApp(),
        ));
  }
}

class TodoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TodoApp();
  }
}

class _TodoApp extends State<TodoApp> {
  List<TodoModel> todos = <TodoModel>[];
  final TextEditingController _textController = TextEditingController();

  _buildComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(hintText: 'New Todo'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => _handleSubmitted(_textController.text),
          )
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _addTodo(text);
    _textController.clear();
  }

  void _addTodo(String text) {
    setState(() {
      todos.add(new TodoModel(text: text));
    });
  }

  void _toggleTodo(TodoModel todo) {
    int index = todos.indexOf(todo);
    TodoModel _todo = todos[index];
    _todo.toggleTodo();
    setState(() {
      todos[index] = _todo;
    });
  }

  /*
  @override
  void initState() {
    todos = widget.initialTodos;
    print(todos);
    super.initState();
  }
  */

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildComposer(),
        new Divider(height: 1.0),
        TodoList(key: ObjectKey(todos), todos: todos, toggleTodo: _toggleTodo, )
      ],
    );
  }
}

// MaterialApp
//  title:
//  body:
//    Scafold
//      appBar
//      body
