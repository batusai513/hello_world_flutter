import 'package:flutter/material.dart';

// Flutter Reactive Framework: immutable list of widgets
// Widgets: Foundation of flutter apps, it's a description of part of a user interface
// When the state change because of an animation or user event the widget rebuilds itself avvording to the new state
// In any given time, a flutter widget tree it's a snapshot of the current state of the app
// UI is a function of state

// 2D Rendering engine built in into the framework, no bridge between rendering code to the native platform
// All rendering work happens on the app side

// The main function is the entrypoint of the application

// runApp toma un widget como argument

// packages: list of function widgets

//Container, MaterialApp, Scaffold, AppBar, Title, BottomTab

//MaterialApp: title, home, theme, builtin text directionality
//Scaffold:  drawers, appbars, bottomNavigation, floating action buttons

//Top level functions: functions outside classes
Widget helloRectangle2() {
  return Container(color: Colors.green);
}

// codetip: always use trailing commas to format the code well
class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: InkWell(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.cake),
                ),
                Center(
                  child: Text(
                    'Hola',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.grey[700],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World!!!!'),
          ),
          body: HelloRectangle(),
        ),
      ),
    );
