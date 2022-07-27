import 'package:college_app/widgets/option_card.dart';
import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';

class FirstPage extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey;

  const FirstPage(this.navKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.25,
            child: SearchBar(),
          ),
          Container(
            height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.65,
            child: ListView(
              children: [
                OptionCard(
                  title: 'Top Colleges',
                  subBody: '126 Colleges',
                  body:
                      'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                  ctx: context,
                  navKey: navKey,
                  image: const AssetImage('assets/images/topcollege.webp'),
                ),
                OptionCard(
                  title: 'Top Schools',
                  subBody: '106 Schools',
                  body:
                      'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                  ctx: context,
                  navKey: navKey,
                  image: const AssetImage('assets/images/schools.jpg'),
                ),
                OptionCard(
                  title: 'Exams',
                  subBody: '16 Exams',
                  body:
                      'Find an end to end information about the exams that are happening in India',
                  ctx: context,
                  navKey: navKey,
                  image: const AssetImage('assets/images/exams.jpg'),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
