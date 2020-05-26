import 'package:flutter/material.dart';

import './step_output.dart';

class StepChanger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepChangerState();
  }
}

class _StepChangerState extends State<StepChanger> {
  String _step = 'Step 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _step = 'Step 2';
            });
          },
          child: Text('Next Step'),
        ),
        StepOutput(_step)
      ],
    );
  }
}
