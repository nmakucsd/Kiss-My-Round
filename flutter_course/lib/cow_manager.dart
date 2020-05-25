import 'package:flutter/material.dart';

import './cows.dart';

//Stateful widgets use the createState method while Stateless and State widgets use the build method
//Stateful widgets also return a State it uses
//The state contains the code that changes the data

class CowManager extends StatefulWidget {
  //remember nothing in the separated object class (stateful widget) can be changed
  //only things in the states can change
  //to 'change' startingCow you must re-call this class to create a new object
  //make a new startingCow and create a new state to call build again.
  final String startingCow;

  CowManager({this.startingCow = 'Miltank'}) {
    print('SF: [CowManager widget] Constructor(startingCow)');
  }

  @override
  State<StatefulWidget> createState() {
    print('SF: [CowManager widget] createState()');
    return _CowManagerState();
  }
}

class _CowManagerState extends State<CowManager> {
  List<String> _cows = [];

  //we can access startingCow in parent class by using widget property found in material.dart
  //init state will be called whenever CowManager is called for the first time
  //initState runs the full build run already so you don't need to call setState
  @override
  void initState() {
    print('S: [CowManager State] initState()');
    _cows.add(widget.startingCow);
    super.initState();
  }


  //this will execute whenever your connected widget (CowManager) receives new external data
  //oldWidget is identical to widget in initState()
  //probably use this to compare updated information with old information
  @override
  void didUpdateWidget (CowManager oldWidget) {
    print('S: [CowManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }


  @override
  Widget build(BuildContext context) {
    print('S: [CowManager State] build()');
    return Column(
      children: [
        Container(
          //container is for the button
          margin: EdgeInsets.all(10.0),
          //button should change product
          //builds again, changes List, updates card, builds new list on screen
          //if we change product, we should also get more cards
          //flutter by default wont update when things change (state changes)
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _cows.add('Tauros');
                print(_cows);
              });
            },
            // color: Theme.of(context).primaryColor,
            color: Color(0xFFffffff),
            child: Text('ADD COW'),
          ),
        ),
        Cows(_cows)
      ],
    );
  }
}
