import 'package:flutter/material.dart';

import 'package:blitetaskintern/shared/constants/appfonts.dart';

class CustomRowWidget extends StatelessWidget {
  String title;
  Widget widget;
  CustomRowWidget({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: Appfonts.w40016white,
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
