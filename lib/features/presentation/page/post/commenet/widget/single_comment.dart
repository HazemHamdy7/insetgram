import 'package:flutter/material.dart';

import '../../../../../../const/constants.dart';
import '../../../../../../const/custom_text.dart';
import '../../../../widgets basics/container_circle_widget.dart';

class SingleComment extends StatelessWidget {
  const SingleComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        // add Expanded here upper Row
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContainerCircleWidget(
            height: 50,
            width: 50,
            color: secondaryColor,
          ),
          sizeHor(10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                          text: "Username",
                          fontSize: 16,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                      Icon(Icons.favorite_outline,
                          size: 24, color: darkGreyColor),
                    ],
                  ),
                  sizeVer(4),
                  const CustomText(
                    text: "This is comment",
                    fontSize: 15,
                    color: primaryColor,
                  ),
                  sizeVer(4),
                  Row(
                    children: [
                      const CustomText(
                          text: "01/01/2023",
                          fontSize: 12,
                          color: darkGreyColor),
                      sizeHor(15),
                      const CustomText(
                          text: "Replay", fontSize: 12, color: darkGreyColor),
                      sizeHor(15),
                      const CustomText(
                          text: "View Replays",
                          fontSize: 12,
                          color: darkGreyColor),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
