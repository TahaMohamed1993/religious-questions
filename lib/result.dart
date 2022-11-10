import 'package:flutter/material.dart';
import 'package:religious_questions/main.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() resatApp;
  final int resultScore;
  const Result({Key? key, required this.resatApp, required this.resultScore})
      : super(key: key);

  String get resultphrase {
    String textResult = '';
    if (resultScore >= 125) {
      textResult = 'احسنت احسن الله عليك  ';
    } else if (resultScore >= 90) {
      textResult = 'اللهم انفعنا بما علمتنا \nوعلمنا ما ينفعنا وذدني علما ';
    } else {
      textResult =
          'bad!!اللهم اجعل السنتا عامرة بذكرك \nوقلوبنا بخشيتك واسرنا بطاعتك ';
    }

    return textResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: isSwitch == false ? Colors.white : Colors.black,
            ),
          ),
          Text(
            'Your Score IS =$resultScore',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: isSwitch == false ? Colors.white : Colors.black,
            ),
          ),
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: isSwitch == false ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 9.5,
          ),
          Text(
            'صدقة جاريه علي روح \nزياد فرج عبد المنعم ',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: isSwitch == false ? Colors.white : Colors.black),
          ),
          const SizedBox(
            height: 9.5,
          ),
          TextButton(
              onPressed: resatApp,
              child: Text(
                'Restart The app',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: isSwitch == false ? Colors.white : Colors.black),
              ))
        ],
      ),
    );
  }
}
