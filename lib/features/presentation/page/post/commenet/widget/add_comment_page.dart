import 'package:flutter/material.dart';

import '../../../../../../const/constants.dart';
import '../../../../../../const/custom_text.dart';
import '../../../../widgets basics/container_circle_widget.dart';

class AddCommentBottomPage extends StatelessWidget {
  const AddCommentBottomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.grey[800],
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          const ContainerCircleWidget(
            height: 40,
            width: 40,
          ),
          sizeHor(10),
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: primaryColor),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Post your comments ...',
                hintStyle: TextStyle(fontSize: 15, color: secondaryColor),
              ),
            ),
          ),
          const CustomText(
            text: "Post",
            fontSize: 15,
            color: blueColor,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
