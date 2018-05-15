import 'package:flutter/material.dart';
import 'package:hello_world/category_route.dart';
import 'package:hello_world/todo.dart';
import 'package:hello_world/todo_item.dart';
import 'package:hello_world/todos.dart';

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

/*
You might wonder why StatefulWidget and State are separate objects. In Flutter, these two types of objects have different life cycles. Widgets are temporary objects, used to construct a presentation of the application in its current state. State objects on the other hand are persistent between calls to build(), allowing them to remember information.
*/

/*
Constant constructors
If your class produces objects that never change, you can make these objects compile-time constants. To do this, define a const constructor and make sure that all instance variables are final.

Subclass StatefulWidget and State.
The MyStatefulWidget class manages its own state, so it overrides createState() to create the State object. The framework calls createState() when it wants to build the widget. In this example, createState() creates an instance of _MyStatefulWidgetState , which is implemented in the next step.

*/

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos App',
        color: Colors.amberAccent,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Todo App'),
          ),
          body: Container(
              color: Colors.blueAccent,
              child: Todos(
                initialTodos: <TodoItem>[
                  TodoItem(
                    text: 'Hola mundo Como estas',
                  )
                ],
              )),
        ),
      ),
    );
