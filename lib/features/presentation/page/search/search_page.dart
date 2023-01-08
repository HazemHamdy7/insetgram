import 'package:flutter/material.dart';
import 'package:insetgram/features/presentation/page/search/widget/search_widget.dart';

import '../../../../const/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backGroundColor,
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchWidget(controller: _searchController),
                  sizeVer(10),
                  GridView.builder(
                    itemCount: 33,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            crossAxisCount: 3,
                            crossAxisSpacing: 5.0),
                    itemBuilder: ((context, index) {
                      return Container(
                        width: 100,
                        height: 100,
                        color: secondaryColor,
                      );
                    }),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
