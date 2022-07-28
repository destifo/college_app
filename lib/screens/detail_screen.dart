import 'package:college_app/widgets/college_card2.dart';
import 'package:flutter/material.dart';

import '../widgets/tab_bar_item.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    List<Widget> _buildScreens() {
      return [
        Center(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Text(
                    "2nd Screen",
                    style: TextStyle(color: Colors.black),
                  );
                })),
        Center(child: Text("2nd Screen")),
        Center(child: Text("3rd Screen")),
        Center(child: Text("4th Screen")),
      ];
    }

    PreferredSizeWidget appBar = AppBar(
      leading: Container(
        margin: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const BackButton(
          color: Color.fromRGBO(12, 85, 236, 1),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        Container(
            margin: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  color: Colors.black,
                )))
      ],
    );

    double remHeight = (mediaQuery.size.height -
        mediaQuery.padding.top -
        appBar.preferredSize.height);

    return Scaffold(
      appBar: appBar,
      body: Container(
        // height: remHeight,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: remHeight * 0.5,
                child: CollegeCard2(),
              ),
            ),
            SliverAppBar(
              // leading: null,
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: Colors.grey.shade200,
              title: TabBar(
                  controller: tabController,
                  // indicator: CircleTab,
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Theme.of(context).primaryColor,
                  labelPadding: const EdgeInsets.all(15),
                  isScrollable: true,
                  // padding: const EdgeInsets.all(0),
                  labelColor: Color.fromRGBO(187, 187, 187, 1),
                  tabs: const [
                    Text(
                      'About college',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Hostel facility',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Q & A',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Events',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ]),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: remHeight * 0.4,
                child: TabBarView(
                  controller: tabController,
                  children: _buildScreens(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          right: 4,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: remHeight * 0.08,
        width: mediaQuery.size.width * 0.91,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
          ),
          onPressed: () {},
          child: Text(
            'Apply Now',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 19,
                ),
          ),
        ),
      ),
    );
  }
}
