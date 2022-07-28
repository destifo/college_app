import 'dart:math';

import 'package:flutter/material.dart';

class BedIcon extends StatelessWidget {
  BedIcon(this.isSelected, {Key? key}) : super(key: key);

  bool isSelected;
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 60,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        border: Border.all(
          color: !isSelected ? Theme.of(context).primaryColor : Colors.white,
        ),
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Theme.of(context).primaryColor : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.bed,
            size: 23,
            color: !isSelected ? Colors.black : Colors.white,
          ),
          Text(
            (random.nextInt(10) + 2).toString(),
            style: TextStyle(
              color: !isSelected ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
