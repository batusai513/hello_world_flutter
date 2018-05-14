import 'package:flutter/material.dart';
import 'package:hello_world/category_route.dart';

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

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'unit converter',
        home: CategoryRoute()
      ),
    );
