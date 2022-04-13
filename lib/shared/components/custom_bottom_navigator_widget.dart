import 'package:flutter/material.dart';

class CustomBottomNavigatorWidget extends StatefulWidget {
  CustomBottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigatorWidget> createState() =>
      _CustomBottomNavigatorWidgetState();
}

class _CustomBottomNavigatorWidgetState
    extends State<CustomBottomNavigatorWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color(0xFF4B6373),
      selectedItemColor: Color(0xFF0080FF),
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: const Color(0Xff000F1A),
          label: 'Calendar',
          icon: Icon(Icons.calendar_today),
        ),
        BottomNavigationBarItem(
          backgroundColor: const Color(0Xff000F1A),
          label: 'Exercicies',
          icon: Icon(Icons.library_books_rounded),
        ),
        BottomNavigationBarItem(
          backgroundColor: const Color(0Xff000F1A),
          label: 'Messages',
          icon: Icon(Icons.textsms_outlined),
        ),
        BottomNavigationBarItem(
          backgroundColor: const Color(0Xff000F1A),
          label: 'Explore',
          icon: Icon(Icons.explore),
        ),
        BottomNavigationBarItem(
          backgroundColor: const Color(0Xff000F1A),
          label: 'Profile',
          icon: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/profilePic.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
