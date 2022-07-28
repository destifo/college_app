import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_app/widgets/bedIcon.dart';
import 'package:college_app/widgets/circle_image.dart';
import 'package:college_app/widgets/college_card2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/tab_bar_item.dart';

class DetailScreen2 extends StatefulWidget {
  DetailScreen2({Key? key}) : super(key: key);

  @override
  State<DetailScreen2> createState() => _DetailScreenState2();
}

class _DetailScreenState2 extends State<DetailScreen2>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  int _activeIndex = 0;

  List<ImageProvider> images = const [
    AssetImage('assets/images/bed1.jpg'),
    AssetImage('assets/images/bed2.jpg'),
    AssetImage('assets/images/bed3.jpg'),
    AssetImage('assets/images/bed4.jpg'),
    AssetImage('assets/images/bed5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    List<Widget> textList() {
      return List.generate(
          10,
          (index) => Text(
                'hey',
                style: TextStyle(color: Colors.black),
              ));
    }

    Widget wrapper(List<Widget> w) {
      return CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(27),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return w[index];
              }, childCount: w.length),
            ),
          ),
        ],
      );
    }

    Widget buildIndicator() {
      return AnimatedSmoothIndicator(
        activeIndex: _activeIndex,
        count: images.length,
        effect: SlideEffect(
          dotHeight: 12,
          dotWidth: 12,
          activeDotColor: Colors.black,
        ),
      );
    }

    List<Widget> _buildScreens() {
      List<List<Widget>> tabs = [
        [
          const Text('Description',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volu.',
            style: TextStyle(color: Colors.grey, letterSpacing: 0.2),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Location',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/map1.jpg'))),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Student Review',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CircleImage(
                imageProvider: AssetImage('assets/images/person1.jpg'),
              ),
              CircleImage(
                imageProvider: AssetImage('assets/images/person2.jpg'),
              ),
              CircleImage(
                imageProvider: AssetImage('assets/images/person3.jpg'),
              ),
              CircleImage(
                imageProvider: AssetImage('assets/images/person4.jpg'),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: const Text('+12')),
              ),
            ],
          ),
          Card(
            color: Colors.grey.shade200,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Arun Sai',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                      style: TextStyle(color: Colors.grey, letterSpacing: 0.2),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return index != 4
                              ? Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                )
                              : Icon(Icons.star_outline);
                        },
                        itemCount: 5,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
        [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            BedIcon(true),
            BedIcon(false),
            BedIcon(false),
            BedIcon(false),
          ]),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    // width: 164,
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: images[index])),
                  );
                },
                options: CarouselOptions(
                  initialPage: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                  viewportFraction: 0.5,
                  // pageSnapping: false,
                  // enableInfiniteScroll: false,
                  // enlargeCenterPage: true,
                  disableCenter: true,
                  height: 127,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildIndicator(),
            ],
          )
        ],
        [
          Center(
              child: Text(
            "3rd Screen",
            style: TextStyle(color: Colors.black),
          ))
        ],
        [
          Center(
              child: Text(
            "4th Screen",
            style: TextStyle(color: Colors.black),
          ))
        ],
      ];
      return tabs.map((e) => wrapper(e)).toList();
    }

    SliverAppBar appBar = SliverAppBar(
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

    double remHeight = (mediaQuery.size.height - mediaQuery.padding.top);

    return Scaffold(
      body: NestedScrollView(
        // floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          appBar,
          SliverToBoxAdapter(
            child: Container(
              height: remHeight * 0.4,
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
                padding: const EdgeInsets.only(bottom: 5),
                // padding: const EdgeInsets.all(0),
                labelColor: const Color.fromRGBO(187, 187, 187, 1),
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Events',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ]),
          )
        ],
        body: TabBarView(
          controller: tabController,
          children: _buildScreens(),
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
