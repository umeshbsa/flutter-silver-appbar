import 'package:flutter/material.dart';
import 'package:flutter_silver_appbar/fragments/chat_list.dart';
import 'package:flutter_silver_appbar/fragments/settings.dart';
import 'package:flutter_silver_appbar/fragments/user_profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            title: Text("Silver AppBar With ToolBar"),
            pinned: true,
            elevation: 0.7,
            expandedHeight: 120.0,
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'Profile'),
                new Tab(text: 'Chat'),
                new Tab(text: 'Settings'),
              ],
              controller: controller,
            ),
          ),
          new SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                new UserProfile(),
                new ChatScreen(),
                new Settings(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
