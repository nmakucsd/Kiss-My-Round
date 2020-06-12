import 'package:flutter/material.dart';

import '../constants.dart';

class PopularCard extends StatelessWidget {
  final String item, animal, imgSrc;
  final Function press;
  const PopularCard({
    Key key,
    this.item,
    this.animal,
    this.imgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //card outside of the picture
    //this size provides you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 5, right: 10, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              //Content inside the card
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    imgSrc,
                    width: size.width * 0.18,
                    // size.width * 0.18 means it uses 18% of the screen width
                  ),
                ),
                Text(item),
                SizedBox(height: 10),
                Text(
                  animal,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
