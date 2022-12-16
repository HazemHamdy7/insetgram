
import 'package:flutter/material.dart';

import '../../../const/constants.dart';
import '../page/cerdential/sing_in._page.dart';

class CustumTextSignIn extends StatelessWidget {
  const CustumTextSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

