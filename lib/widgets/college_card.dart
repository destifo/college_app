import 'package:flutter/material.dart';

class CollegeCard extends StatelessWidget {
  const CollegeCard(this.uniName, this.image, {Key? key}) : super(key: key);
  final String uniName;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(12),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                        size: 27,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const Icon(
                        Icons.bookmark_outline,
                        color: Colors.black,
                        size: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16),
                // height: MediaQuery.of(context).size.height * 0.16,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                uniName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet consectetur adipiscing elit. ',
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
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('4.3'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 14),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Apply Now',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Container(
                      height: 25,
                      child: const ListTile(
                          title: Text(
                            'Lorem ipsum dolor sit amet, conse',
                            style: TextStyle(fontSize: 12),
                          ),
                          leading: Icon(Icons.thumb_up),
                          iconColor: Colors.blue,
                          trailing: Icon(
                            Icons.remove_red_eye_outlined,
                            semanticLabel: 'views',
                            color: Colors.grey,
                            size: 24,
                          )),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
