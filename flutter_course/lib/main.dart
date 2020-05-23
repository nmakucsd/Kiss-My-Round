import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //context is a positional argument, home is a named argument
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hi'),
        ),
      ),
    );
    //NOTES
    //build() is assuming to return a Widget (MaterialApp()) and context is assuming type BuildContext and main is assuming void
    //MaterialApp is the final wrapper for the entire app
    //home requires the Scaffold() widget that will be drawn to the screen when the app loads
    //Scaffold also requires things to be passed into the constructor (appBar in this case)
    //adding appBar: allows you to add a widget which adds the toolbar at the top
    //again appBar: needs a widget --> appBar: AppBar(), creates an instance based on the AppBar widget
    //what should go inside the AppBar?
    //If you want to know what properties can go inside AppBar() hover over it, (Widget title)
    //you can also put cursor inside and type ctrl-space for autocompletion
    //title: requires the final widget which is Text()
    //Text() requires a POSITIONAL ARGUMENT string (the text)
    //SHORTCUT: use shift-option-F to automatic organize format of code

    //FINALLY we mount the myApp widget into main with method runApp(myApp) to construct a myApp object

    //tip if you have only 1 line of code for a function you can do
    //void main() => runApp(myApp());
  }
}
