import 'package:college_app/widgets/degree_card.dart';
import 'package:flutter/material.dart';

class DegreeList extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey;
  const DegreeList(this.navKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        DegreeCard('Bachelor of Technology', Icons.abc, true, navKey),
        DegreeCard('Bachelor of Architecture', Icons.build, false, navKey),
        DegreeCard('Pharmacy', Icons.healing, false, navKey),
        DegreeCard('Law', Icons.policy, false, navKey),
        DegreeCard('Management', Icons.people, false, navKey),
      ]),
    );
  }
}
