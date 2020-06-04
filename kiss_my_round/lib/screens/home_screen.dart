import 'package:kiss_my_round/constants.dart';
import 'package:kiss_my_round/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiss_my_round/styles/my_icons.dart';

import 'details_screen.dart';
// import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  title: "BEEF",
                  animalPicture: cowPicture,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
                InfoCard(
                  title: "PORK",
                  animalPicture: pigPicture,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
                InfoCard(
                  title: "CHICKEN",
                  animalPicture: chickenPicture,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
                InfoCard(
                  title: "LAMB",
                  animalPicture: lambPicture,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
                // InfoCard(
                //   title: "Total Deaths",
                //   iconColor: Color(0xFFFF2D55),
                //   effectedNum: 75,
                //   press: () {},
                // ),
                // InfoCard(
                //   title: "Total Recovered",
                //   iconColor: Color(0xFF50E3C2),
                //   effectedNum: 75,
                //   press: () {},
                // ),
                // InfoCard(
                //     title: "New Cases",
                //     iconColor: Color(0xFF5859D6),
                //     effectedNum: 75,
                //     press: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) {
                //             return DetailsScreen();
                //           },
                //         ),
                //       );
                //     }),
                Text('info cards'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Preventions",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  buildPrevention(),
                  SizedBox(height: 20),
                  buildHelpCard(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row buildPrevention() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //Three prevention pictures
      children: <Widget>[
        // PreventionCard(
        //   svgSrc: iconWashHands,
        //   title: "Wash Hands",
        // ),
        // PreventionCard(
        //   svgSrc: iconUseMask,
        //   title: "Use Mask",
        // ),
        // PreventionCard(
        //   svgSrc: iconCleanDisinfect,
        //   title: "Clean Disinfect",
        // ),
        Text('Prevention Cards'),
      ],
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              //left side padding is 40% of total width
              left: MediaQuery.of(context).size.width * 0.4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEEEEFF),
                  Color(0xFF5959FF),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dial 911 for \nMedical Help!\n",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "If any symptoms appear",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            // child: SvgPicture.asset(iconNurse),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: Text('nurse'),
            // child: SvgPicture.asset(iconVirus),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
            iconMenu), //remember image access path starts from assets/...
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(iconSearch),
          onPressed: () {},
        ),
      ],
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PreventionCard({
    Key key,
    this.svgSrc,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style:
              Theme.of(context).textTheme.body2.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
