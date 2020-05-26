import 'package:flutter/material.dart';

class StepOutput extends StatelessWidget{
  final String output;

  StepOutput(this.output);

  @override
  Widget build(BuildContext context) {
    return Text(output);
  }
}