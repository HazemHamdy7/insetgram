import 'package:flutter/material.dart';

import 'features/presentation/page/sing_in._page.dart';
import 'features/presentation/page/sing_up._page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark(),
      home: const SignUpPage(),
    );
  }
}
