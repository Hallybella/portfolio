// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.getAlignments,
    required this.counter,
    required this.getColorsList,
  }) : super(key: key);

  final List<Alignment> getAlignments;
  final int counter;
  final List<Color> getColorsList;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: getAlignments[counter % getAlignments.length],
          end: getAlignments[(counter + 2) % getAlignments.length],
          colors: getColorsList,
          tileMode: TileMode.mirror,
        ),
      ),
      duration: const Duration(seconds: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Text(
                "Portfolio",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/icons/html.webp",
                        height: 55,
                        // color: Colors.white30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 8.0,
                        ),
                        child: Image.asset(
                          "assets/icons/css3.png",
                          height: 55,
                          // color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Developed subscription email template",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7.0,
                        ),
                        child: Image.asset(
                          "assets/icons/react.webp",
                          height: 55,
                          // color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "Developed contact us and feednack page for Dillivry",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: FlutterLogo(
                          size: 55,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "Developed dashboards for Dillivry mobile application ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              height:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? MediaQuery.of(context).size.height * 0.6
                      : MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.85,
              color: Colors.teal.shade300.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Get in touch",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_pin),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "3, Hooper road Lagos",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.mail),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "belloshadia6@gmail.com",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
