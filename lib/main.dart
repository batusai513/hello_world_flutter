import 'package:flutter/material.dart';

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
            title: Text('Hello Worl'),
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
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return _buildComposer();
  }
}

// MaterialApp
//  title:
//  body:
//    Scafold
//      appBar
//      body
