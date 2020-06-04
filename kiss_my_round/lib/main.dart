import 'package:flutter/material.dart';

import 'package:kiss_my_round/constants.dart';
import 'package:kiss_my_round/screens/home_screen.dart';

// =============================================================================
// Main:
//
//
//
// =============================================================================
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KISS MY ROUND',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
