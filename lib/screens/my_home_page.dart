// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:college_app/screens/first_page.dart';
import 'package:college_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../widgets/tab_bar_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  // final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  List<Widget> _buildScreens(navKey) {
    return [
      FirstPage(navKey),
      Center(child: Text("2nd Screen")),
      Center(child: Text("3rd Screen")),
      Center(child: Text("4th Screen")),
    ];
  }

  late final TabController tabController;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: _navKey,
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (_) => TabBarView(
              controller: tabController,
              children: _buildScreens(_navKey),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(
            14,
            60,
            110,
            1,
          )),
          padding: const EdgeInsets.all(10),
          child: TabBar(
              controller: tabController,
              // indicator: CircleTab,
              indicatorWeight: 3,
              indicatorColor: const Color.fromRGBO(
                255,
                255,
                255,
                1,
              ),
              labelColor: Color.fromRGBO(187, 187, 187, 1),
              tabs: [
                TabBarItem(Icons.home_filled, 'Search'),
                TabBarItem(Icons.bookmark, 'saved'),
                TabBarItem(Icons.data_saver_off, 'saved'),
                TabBarItem(Icons.person, 'account'),
              ]),
        ),
      ),
    );
  }
}
