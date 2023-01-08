import 'package:flutter/material.dart';

import '../../../../../const/constants.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 33,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5, crossAxisCount: 3, crossAxisSpacing: 5.0),
      itemBuilder: ((context, index) {
        return Container(
          width: 100,
          height: 100,
          color: secondaryColor,
        );
      }),
    );
  }
}
