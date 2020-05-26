import 'package:flutter/material.dart';

import './cow_manager.dart';

void main() {
  print('void main()');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //before modularizing into different files and when MyApp was stateful widget
                // //   @override
                // //   State<StatefulWidget> createState() {
                // //     return _MyAppState();
                // //   }
                // // }
                // //my app must return myApp state
                // // the new stateful widget creates a new state object based on own class, which extends state
                // // and has the build method, and flutter internal will call the build method for the stateful widget


                // //by adding <MyApp> you're indicating that this class belongs under MyApp
                // //we manage and change data inside a stateful widget with properties
                // //remember to look at different widgets in your code
                // //if something does/doesn't change it can probably be put in a different widget
                // class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    //context is a positional argument, home is a named argument
    print('SL: [MyApp() widget] build()');



    return MaterialApp(

      // //can adjust to look like ios or whatever look (kinda like CSS)
      // //Colors is a static property so you can look in it by cmd-click
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.deepOrange,
      //   accentColor: Colors.deepPurple
      // ),



      home: Scaffold(

        appBar: AppBar(
          title: Text('I LOVE COWS'),
          backgroundColor: Color(0xFF000000),
        ),

        body: CowManager(
          //putting the name of cow here with named argument overrides the default stated in cowManager (Nebby)
          startingCow: 'Miltank'
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

    //body is the white space below the appbar
    //child is 1 widget
    //column can display multiple widgets up and down
    //children is multiple widgets as an array
    //Image holds images in the asset folder
    //also image files need to be "unlocked" by mention in pubspec.yaml




    //call the map() method on List: allows you to transform every element in List to
    //new element and return it.
    //map() takes a function as argument which holds the tranformation logic
    //this takes every element in the _products List and converts it to a card
    //also element is a String

    //we cant convert a List into a single widget so we put it in another column
    //we still need to convert to a List (in the end)
  }
}
