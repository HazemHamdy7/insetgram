import 'package:flutter/material.dart';

import '../../../../../const/constants.dart';

class CustomTabBarUserName extends StatelessWidget {
  const CustomTabBarUserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
