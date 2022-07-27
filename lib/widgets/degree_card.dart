import 'package:college_app/screens/colleges_page.dart';
import 'package:college_app/screens/my_home_page.dart';
import 'package:college_app/widgets/colleges_body.dart';
import 'package:flutter/material.dart';

class DegreeCard extends StatelessWidget {
  final String courseName;
  final IconData icon;
  final bool isSelected;
  final GlobalKey<NavigatorState> navKey;

  const DegreeCard(this.courseName, this.icon, this.isSelected, this.navKey,
      {Key? key})
      : super(key: key);

  void _navigateToNextScreen(BuildContext context) {
    navKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => CollegesBody(navKey),
      ),
    );
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => CollegesBody(navKey),
    //     ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToNextScreen(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                courseName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Radio(
              value: isSelected,
              groupValue: 'courses',
              onChanged: (val) {
                _navigateToNextScreen(context);
              })
        ],
      ),
    );
  }
}
