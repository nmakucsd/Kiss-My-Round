import 'package:flutter/material.dart';

import './text_output.dart';

class TextManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TextManagerState();
  }
}

class _TextManagerState extends State<TextManager>{

  String _mainText = 'Step 1';

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          RaisedButton(onPressed: () {
            setState(() {
              _mainText = 'Step 2';
            });
          }, 
          child: Text('Change Text')),
          TextOutput(_mainText)
        ],
      );    
  }
}