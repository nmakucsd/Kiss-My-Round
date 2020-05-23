import 'package:flutter/material.dart';


class App extends StatefulWidget{
  createState(){
    return AppStateKeeper();
  }
}




class AppStateKeeper extends State<App> {

  int myValue = 1;

  final barColor = const Color(0xFFff6b6b);
  final bgColor = const Color(0xFFDAE0E2);


  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Text(
           '$myValue',
           textAlign: TextAlign.center,
           style: TextStyle(fontWeight: FontWeight.bold),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back_ios
          ),
          backgroundColor: barColor,
          onPressed: (){
            setState(() {
              myValue = myValue + 1;
            });
          }
        ),          
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('KISS MY ROUND'),
          backgroundColor: barColor,
        )
      ),
    );
  }
}

