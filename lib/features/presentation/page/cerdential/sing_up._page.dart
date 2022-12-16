import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../const/constants.dart';
import '../../widgets/button_container_widget.dart';
import '../../widgets/custum_text_signing.dart';
import '../../widgets/form_container_widget.dart';
import '../../widgets/profile_icon.dart';

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
            const ProfileIconwidget(),
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
            const CustumTextSignIn()
          ],
        ),
      ),
    );
  }
}
