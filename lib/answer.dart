import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String aswerQuestions;
  final Function() x;
  const Answer({Key? key, required this.aswerQuestions, required this.x})
      : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

bool isSwitch = false;

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.x,
        child: Text(
          widget.aswerQuestions,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: isSwitch == false ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
