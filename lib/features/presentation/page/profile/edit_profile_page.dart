// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:insetgram/const/constants.dart';

import '../../../../const/custom_text.dart';
import '../../widgets basics/container_circle_widget.dart';
import 'widget/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({
    Key? key,
    this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const CustomText(
            color: primaryColor,
            fontSize: 16,
            text: "EditProfilePage",
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close, size: 32),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.done, color: blueColor, size: 32),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: ContainerCircleWidget(
                    height: 120,
                    width: 120,
                  ),
                ),
                sizeVer(15),
                const Center(
                  child: CustomText(
                    text: 'Change profile page',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: blueColor,
                  ),
                ),
                sizeVer(15),
                ProfileFormWidget(controller: controller, title: 'Name'),
                sizeVer(15),
                ProfileFormWidget(controller: controller, title: 'User Name'),
                sizeVer(15),
                ProfileFormWidget(controller: controller, title: 'Website'),
                sizeVer(15),
                ProfileFormWidget(controller: controller, title: 'Bio'),
                sizeVer(15),
              ],
            ),
          ),
        ));
  }
}
