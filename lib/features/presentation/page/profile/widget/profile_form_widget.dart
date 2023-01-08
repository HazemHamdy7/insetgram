import 'package:flutter/material.dart';
import 'package:insetgram/const/constants.dart';
import 'package:insetgram/const/custom_text.dart';

class ProfileFormWidget extends StatelessWidget {
  const ProfileFormWidget({super.key, this.controller, required this.title});
  final TextEditingController? controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "$title",
          fontSize: 15,
          color: primaryColor,
        ),
        sizeVer(10),
        TextFormField(
          controller: controller,
          style: const TextStyle(
            color: primaryColor,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelStyle: TextStyle(
              color: primaryColor,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: secondaryColor,
        ),
      ],
    );
  }
}
