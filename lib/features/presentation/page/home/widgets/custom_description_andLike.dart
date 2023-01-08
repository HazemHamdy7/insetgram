import 'package:flutter/material.dart';

import '../../../../../const/constants.dart';
import '../../../../../const/custom_text.dart';

class CustomDescriptionAndLike extends StatelessWidget {
  const CustomDescriptionAndLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomText(
                text: "34 like",
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: "user name   ",
                    color: primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "some description",
                    color: primaryColor,
                    fontSize: 13,
                  ),
                ],
              ),
              sizeHor(10),
              Row(
                children: const [
                  CustomText(
                    text: "View all 10 comments  ",
                    color: darkGreyColor,
                    fontSize: 15,
                  ),
                ],
              ),
              const CustomText(
                text: "20/112/2022  ",
                color: darkGreyColor,
                fontSize: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
