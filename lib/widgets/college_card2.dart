import 'package:flutter/material.dart';

class CollegeCard2 extends StatelessWidget {
  const CollegeCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        child: Column(
          children: [
            Container(
              height: constraints.maxHeight * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/college2.jpg'),
                ),
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GHJK Engineering college',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            softWrap: true,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('4.3'),
                                SizedBox(
                                  height: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      );
    });
  }
}
