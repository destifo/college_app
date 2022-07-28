import 'package:college_app/widgets/college_card.dart';
import 'package:college_app/widgets/rectangular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'option_card.dart';
import 'search_bar2.dart';

class CollegesBody extends StatelessWidget {
  const CollegesBody(this.navKey, {Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navKey;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.20,
                child: SearchBar2(),
              ),
              Container(
                height:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.65,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        width: mediaQuery.size.width * 0.9,
                        height:
                            (mediaQuery.size.height - mediaQuery.padding.top) *
                                0.05,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            RectangularCard('MVSH Engineering college '),
                            RectangularCard('MVSH Engineering college '),
                            RectangularCard('MVSH Engineering college '),
                          ],
                        )),
                    Container(
                      height:
                          (mediaQuery.size.height - mediaQuery.padding.top) *
                              0.55,
                      child: ListView(
                        children: const [
                          CollegeCard(
                            'GHJK Engineering college',
                            AssetImage('assets/images/college1.jpg'),
                          ),
                          CollegeCard(
                            'Bachelor of Technology',
                            AssetImage('assets/images/college2.jpg'),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
