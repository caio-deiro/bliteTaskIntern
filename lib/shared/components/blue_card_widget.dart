import 'package:flutter/material.dart';

import 'package:blitetaskintern/shared/constants/appfonts.dart';

class BlueCardWidget extends StatelessWidget {
  String title;
  String subtitle;
  String image;

  BlueCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      decoration: BoxDecoration(
        color: const Color(0xFF0080FF),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Expanded(
          child: Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A8DFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/images/timeCircle.png'),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Appfonts.w50016white,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    subtitle,
                    style: Appfonts.w40011white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
