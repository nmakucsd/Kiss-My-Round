import 'package:flutter/material.dart';

import './step_changer.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Flutter Practice')),
      body: StepChanger()
    ));
  }
}
