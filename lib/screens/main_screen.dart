import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_example/constants.dart';
import 'package:twitter_example/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: kbackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => setState(() {
                currentTab = 0;
              }),
              icon: SvgPicture.asset(
                "assets/icons/twitter-home.svg",
                color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 1;
              }),
              icon: SvgPicture.asset(
                "assets/icons/twitter-search.svg",
                color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 2;
              }),
              icon: SvgPicture.asset(
                "assets/icons/twitter-alert-6.svg",
                color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 3;
              }),
              icon: SvgPicture.asset(
                "assets/icons/twitter-news.svg",
                color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 4;
              }),
              icon: SvgPicture.asset(
                "assets/icons/twitter-message.svg",
                color: Colors.white,
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
