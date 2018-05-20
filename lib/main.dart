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
          body: Center(
            child: Text('Hello World'),
          ),
        ));
  }
}

// MaterialApp
//  title:
//  body:
//    Scafold
//      appBar
//      body