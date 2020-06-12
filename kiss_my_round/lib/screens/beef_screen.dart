import 'package:kiss_my_round/constants.dart';
import 'package:kiss_my_round/styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiss_my_round/widgets/chuck_top_tabs.dart';
import 'package:kiss_my_round/widgets/rib_top_tabs.dart';

class BeefScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BeefScreenState();
  }
}

class _BeefScreenState extends State<BeefScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //Build a bar for the first layer of division (Chuck, Ribs, Loins, Round)
        appBar: buildBeefAppBar(context, "BEEF"),

        //Build a second Tab Bar for each selection in first layer
        body: TabBarView(
          children: <Widget>[
            ChuckTopTabs(),
            RibTopTabs(),
          ],
        ),
      ),
    );
  }

  AppBar buildBeefAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(0.6),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(iconSearch),
          onPressed: () {},
        ),
      ],
      bottom: TabBar(
        isScrollable: false,
        indicatorColor: Colors.white,
        indicatorWeight: 6,
        onTap: (section) {
          setState(() {
            switch (section) {
              case 0:
                break;
              case 1:
                break;

              default:
            }
          });
        },
        tabs: <Widget>[
          Tab(
            child: Container(
              child: Text(
                'CHUCK',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
          Tab(
            child: Container(
              child: Text(
                'RIB',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
          // Tab(
          //   child: Container(
          //     child: Text(
          //       'LOIN',
          //       style: TextStyle(color: Colors.white, fontSize: 18.0),
          //     ),
          //   ),
          // ),
          // Tab(
          //   child: Container(
          //     child: Text(
          //       'ROUND',
          //       style: TextStyle(color: Colors.white, fontSize: 18.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
