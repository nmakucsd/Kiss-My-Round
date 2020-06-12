import 'package:kiss_my_round/constants.dart';
import 'package:kiss_my_round/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiss_my_round/styles/my_icons.dart';
import 'package:kiss_my_round/widgets/popular_card.dart';

import 'beef_screen.dart';
import 'details_screen.dart';
// import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "KISS MY ROUND",
                        style: Theme.of(context).textTheme.title.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    Wrap(
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
                                  return BeefScreen();
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
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "What's Popular",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),

                    //

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PopularCard(
                            item: "RIBEYE",
                            animal: "BEEF",
                            imgSrc: cowPicture,
                            press: () {},
                          ),
                          PopularCard(
                            item: "FILET MIGNON",
                            animal: "BEEF",
                            imgSrc: cowPicture,
                            press: () {},
                          ),
                          PopularCard(
                            item: "CARNE ASADA",
                            animal: "BEEF",
                            imgSrc: cowPicture,
                            press: () {},
                          ),
                          PopularCard(
                            item: "PORK CHOP",
                            animal: "PORK",
                            imgSrc: pigPicture,
                            press: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    buildHelpCard(context),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
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
