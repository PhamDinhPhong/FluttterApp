import 'package:flutter/material.dart';

class Navigator_TabBar extends StatefulWidget {
  const Navigator_TabBar({super.key});

  @override
  State<Navigator_TabBar> createState() => _Navigator_TabBarState();
}

class _Navigator_TabBarState extends State<Navigator_TabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: TabBar(
            controller: _tabController,
            labelColor: Colors.greenAccent,
            unselectedLabelColor: Colors.white,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
              color: Colors.black,
              width: 0.0,
            )),
            indicatorColor: Colors.black38,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.explore),
              ),
              Tab(
                icon: Icon(Icons.gps_fixed),
              ),
              Tab(
                icon: Icon(Icons.chat),
              ),
              Tab(
                icon: Icon(Icons.notifications_active),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }

  Future<void> searchChat() async {
    try {} catch (e) {
      print(e.toString());
    }
  }
}
