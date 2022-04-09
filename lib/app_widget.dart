import 'package:flutter/material.dart';

import 'app/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blite App',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color(0Xff000F1A),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(0xFF1E2D37),
            ),
      ),
      home: const HomePage(),
    );
  }
}
