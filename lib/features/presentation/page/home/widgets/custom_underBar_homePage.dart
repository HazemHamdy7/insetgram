import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import '../../../../../const/constants.dart';
import '../../post/commenet/comment_page.dart';

class CustomUnderBarAHomePage extends StatelessWidget {
  const CustomUnderBarAHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: primaryColor,
            ),
            color: primaryColor,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CommentPage()));
              },
              icon: const Icon(Feather.message_circle)),
          IconButton(onPressed: () {}, icon: const Icon(Feather.send)),
        ]),
        IconButton(onPressed: () {}, icon: const Icon(Feather.bookmark)),
      ],
    );
  }
}
