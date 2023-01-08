import 'package:flutter/material.dart';
import 'package:insetgram/const/constants.dart';
import 'package:insetgram/const/custom_text.dart';
import '../../../widgets basics/container_circle_widget.dart';
import 'widget/add_comment_page.dart';
import 'widget/single_comment.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: const Icon(Icons.arrow_back)),
          title: const CustomText(
              text: "Comments",
              fontSize: 22,
              color: primaryColor,
              fontWeight: FontWeight.bold),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const ContainerCircleWidget(
                  height: 50,
                  width: 50,
                  color: secondaryColor,
                ),
                sizeHor(15),
                const CustomText(
                    text: "Username",
                    fontSize: 18,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ],
            ),
            sizeVer(10),
            const CustomText(
                text: "This is very beautiful place",
                fontSize: 15,
                color: primaryColor,
                fontWeight: FontWeight.bold),
            sizeVer(10),
            const Divider(
              color: secondaryColor,
            ),
            sizeVer(10),
            const SingleComment(),
            const AddCommentBottomPage(),
          ]),
        ));
  }
}
