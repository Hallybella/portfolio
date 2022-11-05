// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExpWidget extends StatelessWidget {
  const ExpWidget({
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
      height: MediaQuery.of(context).size.height,
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
        child: SingleChildScrollView(
          physics: MediaQuery.of(context).orientation == Orientation.landscape
              ? null
              : NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: Colors.teal.shade300.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                left: 16.0,
                                right: 16.0,
                                bottom: 0,
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "Software developer (Intern)",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                left: 16.0,
                                right: 16.0,
                                bottom: 0,
                              ),
                              child: Text(
                                """
        
Employ Git/GitHub command line to manage branches of projects used by
both in-house and offshore teams.
        
Collaborate with API team, designers, and QA team to make the app better.
        
Work with objective-c and cocoa frameworks in Xcode.

Design & develop mobile applications with flutter.

Implement modules using dart programming language.

Modify the Gradle and add dependencies for application.

Used activities, services, async tasks, timers and other components to
design the App.
        """,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16.0,
                                left: 16.0,
                              ),
                              child: Text(
                                "What I can offer",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  height: 1.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                left: 16.0,
                                right: 16.0,
                                bottom: 16,
                              ),
                              child: Text(
                                "I have a deep understanding and am well-versed in using HTML and CSS in creating responsive websites and Flutter in developing mobile application. I am confident if I get a chance in your organization, I can exceed expectations as I hope to build a future with your company",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
