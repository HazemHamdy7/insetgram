import 'package:flutter/material.dart';
import 'package:insetgram/const/constants.dart';
import 'package:insetgram/features/presentation/widgets%20basics/container_circle_widget.dart';

class UploadPostPage extends StatelessWidget {
  const UploadPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: ContainerCircleWidget(
              icon: Icons.upload,
              size: 40,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
