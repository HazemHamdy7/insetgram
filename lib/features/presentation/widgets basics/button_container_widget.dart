// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:insetgram/const/constants.dart';

class ButtomContanierWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTabListener;
  const ButtomContanierWidget({
    Key? key,
    this.color,
    this.text,
    this.onTabListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Center(
          child: Text(
            "$text",
            style: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
