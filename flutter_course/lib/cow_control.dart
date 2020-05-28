import 'package:flutter/material.dart';

class CowControl extends StatelessWidget {
  final Function addCow;

  CowControl(this.addCow);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {
      addCow('Nebby');
      // color: Theme.of(context).primaryColor,
      
    },
    color: Color(0xFFffffff),
    child: Text('ADD COW')
    );
  }
}
