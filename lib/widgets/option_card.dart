import 'package:college_app/widgets/degree_list.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String body;
  final String subBody;
  final BuildContext ctx;
  final ImageProvider image;
  final GlobalKey<NavigatorState> navKey;

  const OptionCard(
      {required this.body,
      required this.image,
      required this.subBody,
      required this.title,
      required this.navKey,
      required this.ctx,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: ctx,
            builder: (_) {
              return Container(
                  padding: const EdgeInsets.all(25),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sort by",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DegreeList(navKey),
                      ],
                    ),
                  ));
            });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.black,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: image,
                fit: BoxFit.cover,
                opacity: 1,
              )),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      body,
                      style: const TextStyle(wordSpacing: 1.2),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+' + subBody,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
