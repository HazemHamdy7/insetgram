import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insetgram/features/presentation/page/sing_in._page.dart';

import '../../../const/constants.dart';
import '../widgets/button_container_widget.dart';
import '../widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Container(), flex: 2),
            Center(
              child: SvgPicture.asset(
                "assets/ic_instagram.svg",
                color: primaryColor,
              ),
            ),
            sizeVer(15),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: secondaryColor,
                    ),
                    child: Image.asset("assets/profile_default.png"),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -15,
                    child: IconButton(
                      icon: const Icon(
                        Icons.add_a_photo,
                        color: blueColor,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            sizeVer(30),
            const FormContainerWidget(hintText: "username"),
            sizeVer(15),
            const FormContainerWidget(hintText: "Email"),
            sizeVer(15),
            const FormContainerWidget(
              hintText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            const FormContainerWidget(hintText: "Bio"),
            sizeVer(15),
            ButtomContanierWidget(
              color: blueColor,
              text: "Sign In",
              onTabListener: () {},
            ),
            Flexible(child: Container(), flex: 2),
            const Divider(
              color: secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w600),
                  ),
                  sizeHor(15),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                          (route) => false);
                    },
                    child: const Text("Sign In",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
