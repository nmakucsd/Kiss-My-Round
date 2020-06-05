// import 'package:kiss_my_round/styles/my_icons.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
// import 'line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String animalPicture;
  final Function press;
  const InfoCard({
    Key key,
    this.title,
    this.animalPicture,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: press,
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            height: constraints.maxWidth / 2 - 10,

            //here constraints.maxWidth provides us the available width for the widget
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                ),
                Image.asset(
                  animalPicture,
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                ),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
