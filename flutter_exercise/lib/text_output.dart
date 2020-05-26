import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget{

  final String output;

  TextOutput(this.output);

  @override
  Widget build(BuildContext context) {
    return Text(output);
  }
}