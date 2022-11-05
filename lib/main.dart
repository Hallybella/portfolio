// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/blocs/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/about_widget.dart';
import 'widgets/contact_widget.dart';
import 'widgets/experience_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) {
        return ThemeChanger(ThemeData.dark());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),

        home: MaterialAppWithTheme(),
      ),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        theme: theme.getTheme());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var counter = 0;
  String currentPage = "Home";
  final ScrollController _controller = ScrollController();

  void _animateToIndex(double index) {
    _controller.animateTo(
      index,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  List<Color> get getColorsList => [
        Color(0xFF0D182D),
        Color.fromARGB(255, 2, 91, 105),
      ]..shuffle();

  List<Alignment> get getAlignments => [
        Alignment.bottomLeft,
        Alignment.bottomRight,
        Alignment.topRight,
        Alignment.topLeft,
      ];

  _startBgColorAnimationTimer() {
    ///Animating for the first time.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      counter++;
      setState(() {});
    });

    const interval = Duration(seconds: 5);
    Timer.periodic(
      interval,
      (Timer timer) {
        counter++;
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _startBgColorAnimationTimer();
    // _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // endDrawer: Drawer(),

        extendBodyBehindAppBar: true,
        extendBody: true,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.toggle_on,
          //     ),
          //   ),
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.toggle_on,
          //     ),
          //   )
          // ],
          leading: Image.asset(
            "assets/images/logo.png",
            height: 25,
            // color: Colors.white30,
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  AboutWidget(
                      getAlignments: getAlignments,
                      counter: counter,
                      getColorsList: getColorsList),
                  ExpWidget(
                      getAlignments: getAlignments,
                      counter: counter,
                      getColorsList: getColorsList),
                  ContactWidget(
                      getAlignments: getAlignments,
                      counter: counter,
                      getColorsList: getColorsList),
                ],
              ),
            ),
            MediaQuery.of(context).orientation == Orientation.landscape
                ? Positioned(
                    top: MediaQuery.of(context).size.height * 0.14,
                    left: MediaQuery.of(context).size.width - 55,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.81,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "Home";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 0,
                              );
                            },
                            child: Icon(
                              Icons.person,
                              size: 24,
                              color: currentPage == "Home"
                                  ? Colors.teal.shade300
                                  : Color(0xFF8A92AD),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "Experience";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 1,
                              );
                            },
                            child: Text(
                              "01",
                              style: TextStyle(
                                fontSize: 24,
                                color: currentPage == "Experience"
                                    ? Colors.teal.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "Contact";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 4,
                              );
                            },
                            child: Text(
                              "02",
                              style: TextStyle(
                                fontSize: 20,
                                color: currentPage == "Contact"
                                    ? Colors.teal.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              RotatedBox(
                                quarterTurns: 135,
                                child: Text(
                                  currentPage,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.teal.shade300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.white,
                                  height: 100,
                                  width: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : Positioned(
                    top: MediaQuery.of(context).size.height * 0.57,
                    left: MediaQuery.of(context).size.width - 55,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "About";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 0,
                              );
                            },
                            child: Icon(
                              Icons.person,
                              size: 24,
                              color: currentPage == "About"
                                  ? Colors.teal.shade300
                                  : Color(0xFF8A92AD),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "Experience";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 1,
                              );
                            },
                            child: Text(
                              "01",
                              style: TextStyle(
                                fontSize: 24,
                                color: currentPage == "Experience"
                                    ? Colors.teal.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                currentPage = "Contact";
                              });
                              _animateToIndex(
                                MediaQuery.of(context).size.height * 4,
                              );
                            },
                            child: Text(
                              "02",
                              style: TextStyle(
                                fontSize: 20,
                                color: currentPage == "Contact"
                                    ? Colors.teal.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              RotatedBox(
                                quarterTurns: 135,
                                child: Text(
                                  currentPage,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.teal.shade300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.white,
                                  height: 100,
                                  width: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
