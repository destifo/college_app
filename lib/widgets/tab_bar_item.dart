import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const TabBarItem(
    this.icon,
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        children: [
          Icon(icon),
          Container(
            margin: const EdgeInsets.all(4),
            child: Text(
              label,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
      // text: "Search",
    );
  }
}
