import 'package:flutter/material.dart';

class CustomLinearProgressWidget extends StatelessWidget {
  const CustomLinearProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(2),
        child: LinearProgressIndicator(
          backgroundColor: Color(0xFF12212B),
          valueColor: AlwaysStoppedAnimation(Color(0xFF0080Ff)),
          value: 0.05,
          color: Colors.blue,
          minHeight: 10,
        ),
      ),
    );
  }
}
