// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
    required this.getAlignments,
    required this.counter,
    required this.getColorsList,
  }) : super(key: key);

  final List<Alignment> getAlignments;
  final int counter;
  final List<Color> getColorsList;

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

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
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.height * 0.15
              : MediaQuery.of(context).size.height * 0.1,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, my name is",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).orientation == Orientation.landscape
                  ? MediaQuery.of(context).size.width * 0.9
                  : MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shadia Bello",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          height: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          "Flutter\nDeveloper",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white60,
                            letterSpacing: 0.5,
                            height: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/me.jpeg"),
                    radius: 70,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse("https://github.com/Hallybella"),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/github.png",
                        height: 25,
                        color: Colors.white30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse("https://www.linkedin.com/in/shadiabello/"),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/linkedin.png",
                        height: 25,
                        color: Colors.white30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse("https://twitter.com/hallybellar"),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/twitter.png",
                        height: 25,
                        color: Colors.white30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse(
                              "https://www.facebook.com/bello.halimat.359/"),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/facebook.png",
                        height: 25,
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
              ),
              child: SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.height * 0.25
                        : MediaQuery.of(context).size.height * 0.17,
                width:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? MediaQuery.of(context).size.width * 0.9
                        : MediaQuery.of(context).size.width,
                child: Text(
                  "A motivated and detailed-oriented individual with in depth knowledge of  languages  and development tools, ability to perform a task perfectly within a time frame and getting the best output. Seeking a position in a growth-oriented company where i can utilise my experience to the advantage of the company and as well learn and develop my skills.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white60,
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            MediaQuery.of(context).orientation == Orientation.landscape
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        height: 1.0,
                      ),
                    ),
                  ),
            MediaQuery.of(context).orientation == Orientation.landscape
                ? Container()
                : SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.42,
                    child: GridView.count(
                      padding: EdgeInsets.all(4.0),
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 25.0,
                      crossAxisSpacing: 25.0,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.teal.shade300,
                                width: 2.0 //BorderSide
                                ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/html.webp",
                              height: 25,
                              // color: Colors.teal.shade300,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.teal.shade300,
                                width: 2.0 //BorderSide
                                ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/css3.png",
                              height: 25,
                              // color: Colors.teal.shade300,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.teal.shade300,
                                width: 2.0 //BorderSide
                                ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/react.webp",
                              height: 25,
                              // color: Colors.teal.shade300,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.teal.shade300,
                            border: Border.all(
                                color: Colors.teal.shade300,
                                width: 2.0 //BorderSide
                                ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlutterLogo()),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
