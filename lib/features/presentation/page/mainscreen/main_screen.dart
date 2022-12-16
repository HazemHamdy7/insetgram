import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

import '../../../../const/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currenIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanage(int index) {
    setState(() {
      currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: backGroundColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                MaterialCommunityIcons.home_variant,
                color: primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.md_search,
                color: primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.md_add_circle,
                color: primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: primaryColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
              ),
              label: "",
            ),
          ],
          onTap: navigationTapped),
      body: PageView(
        controller: pageController,
        children: const [
          Center(child: Text("Home")),
          Center(child: Text("search")),
          Center(child: Text("uplode")),
          Center(child: Text("favorite")),
          Center(child: Text("account")),
        ],
        onPageChanged: onPageChanage,
      ),
    );
  }
}
