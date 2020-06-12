import 'package:flutter/material.dart';
import 'package:kiss_my_round/constants.dart';

class RibRibsTab extends StatefulWidget {
  @override
  _RibRibsTabState createState() => _RibRibsTabState();
}

class _RibRibsTabState extends State<RibRibsTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                child: Text("RIBEYE STEAKS"),
              ),
              Tab(
                child: Text("TAMAHAWK STEAKS"),
              ),
            ],
          ),
        ),
        // body: TabBarView(
        //   //adds content into tab
        //   controller: _tabController,
        //   children: <Widget>[
        //     Text("hi"),
        //     Text("hi"),
        //     Text("hi"),
        //     Text("hi"),
        //     RibRibsTab(),
        //   ],
        // ),
      ),
    );
  }
}
