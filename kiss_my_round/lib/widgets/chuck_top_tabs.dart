import 'package:flutter/material.dart';
import 'package:kiss_my_round/constants.dart';

class ChuckTopTabs extends StatefulWidget {
  @override
  _ChuckTopTabsState createState() => _ChuckTopTabsState();
}

class _ChuckTopTabsState extends State<ChuckTopTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 10, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
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
                child: Text("NECK"),
              ),
              Tab(
                child: Text("CHUCK"),
              ),
              Tab(
                child: Text("CHUCK RIB PLATE"),
              ),
              Tab(
                child: Text("BRISKET"),
              ),
              Tab(
                child: Text("FORESHANK"),
              ),
              Tab(
                child: Text("TERES MAJOR"),
              ),
              Tab(
                child: Text("UNDERBLADE"),
              ),
              Tab(
                child: Text("SHOULDER CLOD"),
              ),
              Tab(
                child: Text("FLAT IRON STEAK"),
              ),
              Tab(
                child: Text("MOCK TENDER"),
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
            Text("hi"),
            Text("hi"),
            Text("hi"),
            Text("hi"),
            Text("hi"),
            Text("hi"),
          ],
        ),
      ),
    );
  }
}
