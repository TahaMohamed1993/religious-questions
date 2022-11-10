import 'package:flutter/material.dart';
import 'package:religious_questions/result.dart';
import 'qous.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitch = false;

class _MyAppState extends State<MyApp> {
  int questionIndxe = 0;
  int totalScore = 0;
  void restQouzApp() {
    setState(() {
      questionIndxe = 0;
      totalScore = 0;
    });
  }

  void funAnswerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndxe += 1;
    });
  }

  final List<Map<String, Object>> question = [
    {
      'questionText': 'من هو الصحابي الذي كان ثاني الخلفاء الراشدين؟',
      'answers': [
        {'text': 'عبد الله بن عمر رضي الله عنه', 'score': 0},
        {'text': ' أبو هريرة رضي الله عنه ', 'score': 0},
        {'text': 'عمر بن الخطاب رضي الله عنه', 'score': 10},
      ]
    },
    {
      'questionText':
          'ما هي الغزوة التي خسرها المسلمون بسبب أنّ الرماة خالفوا فيها أمر رسول الله صلَّى الله عليه وسلَّم؟',
      'answers': [
        {'text': 'غزوة أحد ', 'score': 10},
        {'text': 'غزوة بدر ', 'score': 0},
        {'text': 'غزوة الخندق', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هو أول الأيام التي خلقها الله تعالى؟',
      'answers': [
        {'text': 'يوم الجمعة', 'score': 0},
        {'text': 'يوم السبت', 'score': 0},
        {'text': 'يوم الأحد', 'score': 10},
      ],
    },
    {
      'questionText':
          'ما هو اسم العبد الصالح الذي رافقه نبي الله موسى عليه السلام؟',
      'answers': [
        {'text': 'عمر', 'score': 0},
        {'text': 'الخضر', 'score': 10},
        {'text': 'عزيز', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هو عدد السجدات في القرآن الكريم؟',
      'answers': [
        {'text': '15 سجدة', 'score': 0},
        {'text': '14 سجدة', 'score': 10},
        {'text': '17 سجدة', 'score': 0},
      ],
    },
    {
      'questionText': 'من هو النبي الذي آمن به كل قومه؟',
      'answers': [
        {'text': 'صالح عليه السلام', 'score': 0},
        {'text': 'نوح عليه السلام', 'score': 0},
        {'text': 'يونس عليه السلام', 'score': 10},
      ],
    },
    {
      'questionText':
          'ما هي السورة الوحيدة في القرآن الكريم التي لا تحتوي على حرف الميم؟',
      'answers': [
        {'text': 'سورة الفيل', 'score': 0},
        {'text': 'سورة النصر', 'score': 0},
        {'text': 'سورة الكوثر', 'score': 10},
      ],
    },
    {
      'questionText':
          'من هو النبي الذي اختصه الله عز وجل بقتل المسيح الدجال في آخر الزمان بعد فتنة البشر به؟',
      'answers': [
        {'text': 'سيدنا إبراهيم عليه السلام', 'score': 10},
        {'text': 'سيدنا محمد صلي الله علية وسلم', 'score': 10},
        {'text': 'سيدنا عيسى عليه السلام', 'score': 10},
      ],
    },
    {
      'questionText':
          'كم مرة ذُكر اسم الرسول محمد صلى الله عليه وسلم في القرآن؟',
      'answers': [
        {'text': '6 مرات', 'score': 0},
        {'text': '5 مرات', 'score': 0},
        {'text': '4 مرات', 'score': 10},
      ],
    },
    {
      'questionText': 'ما اسم أول نبي خط بالقلم؟',
      'answers': [
        {'text': 'محمد', 'score': 0},
        {'text': 'عيسى', 'score': 0},
        {'text': 'إدريس', 'score': 10},
      ],
    },
    {
      'questionText': 'ما اسم النبي الذي كان لقبه ذى النون؟',
      'answers': [
        {'text': 'يحيى', 'score': 0},
        {'text': 'زكريا ', 'score': 0},
        {'text': 'يونس', 'score': 10},
      ],
    },
    {
      'questionText': 'ما اسم أول نبي قام بركوب الخيل؟',
      'answers': [
        {'text': 'إسماعيل', 'score': 10},
        {'text': 'يحيى ', 'score': 0},
        {'text': 'سليمان', 'score': 0},
      ],
    },
    {
      'questionText': 'ما اسم النبي الذي قبض الله روحه بالسماء؟',
      'answers': [
        {'text': 'موسى', 'score': 0},
        {'text': 'إدريس', 'score': 10},
        {'text': 'عيسى', 'score': 0},
      ],
    },
    {
      'questionText': 'سورة تلقب بـ الفاضحة، فما هي؟',
      'answers': [
        {'text': 'سورة الكهف', 'score': 0},
        {'text': 'سورة البفرة', 'score': 0},
        {'text': 'سورة التوبة', 'score': 10},
      ],
    },
    {
      'questionText': 'ما هي السورة الملقبة بعروس القرآن؟',
      'answers': [
        {'text': 'سورة الفاتحة', 'score': 0},
        {'text': 'سورة الرحمن', 'score': 10},
        {'text': 'سورة يس', 'score': 0},
      ],
    },
    {
      'questionText': 'كم عدد سور القرآن الكريم ؟',
      'answers': [
        {'text': ' 200 سورة', 'score': 0},
        {'text': '114 سورة', 'score': 10},
        {'text': '120 سورة', 'score': 0},
      ],
    },
    {
      'questionText': ' كم كان عمر النبي صلى الله عليه وسلم عندما بعث ؟',
      'answers': [
        {'text': '40 سنة', 'score': 10},
        {'text': ' 30 سنة', 'score': 0},
        {'text': '50 سنة', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي أول صلاة صلاها الرسول صلى الله عليه وسلم؟',
      'answers': [
        {'text': 'صلاة العشاء', 'score': 0},
        {'text': 'صلاة الظهر', 'score': 10},
        {'text': 'صلاة الفجر', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي زوجة أحد الرسل التي تسمى “والهة”؟',
      'answers': [
        {'text': 'امرأة فرعون', 'score': 0},
        {'text': 'امرأة لوط', 'score': 10},
        {'text': 'امرأة نوح', 'score': 0},
      ],
    },
    {
      'questionText': 'من هو أول مولود في الإسلام؟',
      'answers': [
        {'text': 'يحيي بن زكريا', 'score': 0},
        {'text': 'إسماعيل بن إبراهيم', 'score': 0},
        {'text': 'عبد الله بن عمر بن الخطاب', 'score': 10},
      ],
    },
    {
      'questionText': 'من أول من جاهد في سبيل الله؟',
      'answers': [
        {'text': 'إدريس عليه السلام', 'score': 10},
        {'text': 'هود عليه السلام،', 'score': 0},
        {'text': 'صالح عليه السلام', 'score': 0},
      ],
    },
    {
      'questionText': 'من هو أول من استلم الحجر الأسود من الأئمة؟',
      'answers': [
        {'text': 'أبو بكر الصديق', 'score': 0},
        {'text': 'سعد بن معاذ', 'score': 0},
        {'text': 'ابن الزبير', 'score': 10},
      ],
    },
    {
      'questionText':
          'ما هي السورة القرآنية التي يبكي فيها الشيطان عند سماعها؟',
      'answers': [
        {'text': 'سورة يونس', 'score': 0},
        {'text': 'سورة السجدة', 'score': 10},
        {'text': 'سورة الفاتحة', 'score': 0},
      ],
    },
    {
      'questionText': 'أين يوجد البيت المعمور؟',
      'answers': [
        {'text': 'في السماء', 'score': 10},
        {'text': 'في الأرض', 'score': 0},
        {'text': 'في الجنة', 'score': 0},
      ],
    },
    {
      'questionText': 'ما هي المدة التي نام فيها أهل الكهف؟',
      'answers': [
        {'text': '310 سنة', 'score': 10},
        {'text': '309 سنة', 'score': 10},
        {'text': '308 سنة،', 'score': 10},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              value: isSwitch,
              onChanged: ((value) {
                setState(() {
                  isSwitch = value;
                });
              }),
            ),
          ],
          centerTitle: true,
          title: const Text(
            ' أســــئلة دينيه  ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: isSwitch == false ? Colors.black : Colors.white,
          child: questionIndxe < question.length
              ? Qous(
                  answerQuestion: funAnswerQuestion,
                  questionIndxes: questionIndxe,
                  questions: question,
                )
              : Result(
                  resatApp: restQouzApp,
                  resultScore: totalScore,
                ),
        ),
      ),
    );
  }
}
