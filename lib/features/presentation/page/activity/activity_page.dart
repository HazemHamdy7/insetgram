import 'package:flutter/material.dart';
import 'package:insetgram/const/custom_text.dart';

import '../../../../const/constants.dart';

class ActivatyPage extends StatelessWidget {
  const ActivatyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const CustomText(
            text: "Activity",
            fontSize: 23,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
