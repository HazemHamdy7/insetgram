import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insetgram/const/constants.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: secondaryColor,
                      ),
                      child: Image.asset(
                        "assets/profile_default.png",
                      ),
                    ),
                    sizeHor(10),
                    const Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.more_vert,
                    color: primaryColor,
                  ),

                  color: primaryColor,
                ),
              ],
            ),
            sizeVer(15),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              color: secondaryColor,
            ),
            sizeVer(10),
            // row favorite& comment& send//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: primaryColor,
                      ),
                      color: primaryColor,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Feather.message_circle)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Feather.send)),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Feather.bookmark)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
