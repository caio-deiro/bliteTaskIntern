import 'package:flutter/material.dart';

import 'package:blitetaskintern/shared/constants/appfonts.dart';

class TeachersCardWidget extends StatelessWidget {
  String title, subtitle, image;
  TeachersCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 92,
        decoration: BoxDecoration(
          color: Color(0Xff000F1A),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 42,
                    width: 42,
                    child: Image.asset(image, fit: BoxFit.cover)),
                SizedBox(width: 22),
                Text(
                  title,
                  style: Appfonts.w50016white,
                ),
              ],
            ),
            SizedBox(height: 18),
            Text(
              subtitle,
              style: Appfonts.w40013white,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
