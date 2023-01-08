import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insetgram/const/constants.dart';
import 'widgets/costum_tab_bar_username.dart';
import 'widgets/custom_description_andLike.dart';
import 'widgets/custom_underBar_homePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: SvgPicture.asset("assets/ic_instagram.svg",
            color: primaryColor, height: 32),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                MaterialCommunityIcons.facebook_messenger,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomTabBarUserName(),
            sizeVer(15),
            Container(
              child: SvgPicture.asset("assets/ic_instagram.svg"),
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              color: secondaryColor,
            ),
            sizeVer(10),
            // row favorite& comment& send//
            const CustomUnderBarAHomePage(),
            sizeVer(5),
            const CustomDescriptionAndLike(),
          ],
        ),
      ),
    );
  }
}
