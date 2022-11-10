import 'package:flutter/material.dart';
import 'main.dart';

class Questions extends StatelessWidget {
  final String questionText;

  const Questions({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: isSwitch == false ? Colors.white : Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
