import 'package:flutter/material.dart';

class Cows extends StatelessWidget{
  //final says that this is only set from the outside and mutated by replacement
  //then it will call build with the replaced value
  final List<String> cows;

  //flutter lets you do this.cows
  Cows(this.cows){
        print('SL: [Cows widget] Constructor()');
  }


  @override
  Widget build(BuildContext context) {
    print('SL: [Cows widget] build()');

    return  Column( //column is is a widget with children
              children: cows //children are are a List<String> cow
                  .map(       //every element in cow is converted to a card
                    (element) => Card(
                      child: Column(          //in each card is a smaller column
                        children: <Widget>[   //each children in the column are widgets
                          Image.asset('assets/cow.png'),  //image widget
                          Text(element)                   //text widget with elements found in List<String>cow
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
  }
}