import 'package:cv_nepal_practice/quiz.dart';
import 'package:cv_nepal_practice/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text':'Black','score':100},
        {'text':'Red','score':50},
        {'text':'Yellow','score':30},
        {'text':'Green','score':10}],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text':'Dog','score':100},
        {'text':'Rat','score':50},
        {'text':'Bird','score':30},
        {'text':'Tiger','score':10}
      ],

},
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text':'Ishan','score':100},
        {'text':'Roho','score':50},
        {'text':'Birat','score':30},
        {'text':'Liger','score':10},
       ],
    }
];
  var _questionIndex=0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }

  void _answerQuestion(int score){
    // var aBool = true;
    // aBool = false;
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('We have more questions!');
    }else{
      print('No more questions!');
    }
  }


  @override
  Widget build(BuildContext context) {

    // questions=[]; does not work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            title: Text("hi Ishan"),
            backgroundColor: Colors.blue,
          ),
          body: _questionIndex<_questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,)
              : Result(_totalScore ,_resetQuiz)

        ),
    );
  }
}

