import 'package:flutter/material.dart';
import 'package:kiss_my_round/constants.dart';

import 'rib/rib_ribs_tab.dart';

class RibTopTabs extends StatefulWidget {
  @override
  _RibTopTabsState createState() => _RibTopTabsState();
}

class _RibTopTabsState extends State<RibTopTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor.withOpacity(0.5),
          title: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey[250],
            tabs: <Widget>[
              Tab(
                child: Text("OUTSIDE SKIRT"),
              ),
              Tab(
                child: Text("INSIDE SKIRT"),
              ),
              Tab(
                child: Text("NAVEL"),
              ),
              Tab(
                child: Text("SHORT RIB PLATE"),
              ),
              Tab(
                child: Text("RIBS"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          //adds content into tab
          controller: _tabController,
          children: <Widget>[
            Text("hi"),
            Text("hi"),
            Text("hi"),
            Text("hi"),
            RibRibsTab(),
          ],
        ),
      ),
    );
  }
}
