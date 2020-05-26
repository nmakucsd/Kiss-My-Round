//1. create a new flutter app (in this project) and output an appBar and some text
//below it
//2. Add a button which changes the text (to any other text of your choice)
//3. Split the app into 3 widgets: App, TextControl, Text;


//for single things to be inside body: you need
//Container() Center()
//for multiple things to be inside body: you need
//Column()

//Step 2 Directions:
//Change to Stateful Widget
//Change stateless widget to State _MyAppState extends State<MyApp>
//Add createState to Stateful Widget and return _MyAppState
//onPress() {} function needs setState() {} to change the state

import 'package:flutter/material.dart';

import './text_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Exercise 1'),
      ),
      body: TextManager()
    ));
  }
}


