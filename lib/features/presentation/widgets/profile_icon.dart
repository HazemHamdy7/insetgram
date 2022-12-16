import 'package:flutter/material.dart';

import '../../../const/constants.dart';

class ProfileIconwidget extends StatelessWidget {
  const ProfileIconwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: secondaryColor,
            ),
            child: Image.asset("assets/profile_default.png"),
          ),
          Positioned(
            right: -10,
            bottom: -15,
            child: IconButton(
              icon: const Icon(
                Icons.add_a_photo,
                color: blueColor,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
