import 'package:flutter/material.dart';

import '../../../const/constants.dart';

class ContainerCircleWidget extends StatelessWidget {
  final double height;
  final double width;
  final double? size;
  final IconData? icon;
  final Color? color;

  const ContainerCircleWidget({
    Key? key,
    required this.height,
    required this.width,
    this.size,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: secondaryColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
