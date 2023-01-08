import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:insetgram/features/presentation/page/profile/widget/grid_view_bulider.dart';
import '../../../../const/constants.dart';
import '../../../../const/custom_text.dart';
import '../../widgets basics/container_circle_widget.dart';
import 'widget/bottom_sheet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CustomText(
            text: "user name",
            fontSize: 23,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                openBottomModalSheet(context);
              },
              icon: const Icon(
                MaterialCommunityIcons.menu,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ContainerCircleWidget(
                      height: 80, width: 80, color: primaryColor),
                  Row(
                    children: [
                      Column(
                        /// ==============posts==========

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                              text: "0",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                          sizeVer(10),
                          const CustomText(
                              text: "posts",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ],
                      ),
                      sizeHor(20),

                      /// ==============Followers==========
                      Column(
                        children: [
                          const CustomText(
                              text: "54",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                          sizeVer(10),
                          const CustomText(
                              text: "Followers",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ],
                      ),
                      sizeHor(20),

                      /// ==============Following==========
                      Column(
                        children: [
                          const CustomText(
                              text: "123",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                          sizeVer(10),
                          const CustomText(
                              text: "Following",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              sizeVer(10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "Name",
                        fontSize: 16,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                    sizeVer(5),
                    const CustomText(
                      text: "The bio of user ",
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              sizeVer(10),
              const GridViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  // opntBottomModelSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return (Container(
  //           height: 150,
  //           decoration: BoxDecoration(
  //             color: backGroundColor.withOpacity(10),
  //           ),
  //           child: SingleChildScrollView(
  //             child: Container(
  //               margin: const EdgeInsets.symmetric(vertical: 10),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: const [
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 10.0),
  //                     child: CustomText(
  //                         text: "More Options",
  //                         fontSize: 18,
  //                         fontWeight: FontWeight.bold,
  //                         color: primaryColor),
  //                   ),
  //                   SizedBox(height: 8),
  //                   Divider(
  //                     thickness: 1,
  //                     color: secondaryColor,
  //                   ),
  //                   SizedBox(height: 8),
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 10.0),
  //                     child: CustomText(
  //                         text: "Edit Profile",
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w500,
  //                         color: primaryColor),
  //                   ),
  //                   SizedBox(height: 8),
  //                   Divider(
  //                     thickness: 1,
  //                     color: secondaryColor,
  //                   ),
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 10.0),
  //                     child: CustomText(
  //                         text: "Logout",
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w500,
  //                         color: primaryColor),
  //                   ),
  //                   SizedBox(height: 8),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ));
  //       });
  // }
}
