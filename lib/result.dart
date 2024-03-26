// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Result extends StatefulWidget {
//   final int resultScore;
//   final Function resetHandler;
//
//   const Result(this.resultScore, this.resetHandler);
//
//   @override
//   State<Result> createState() => _ResultState();
// }
//
// class _ResultState extends State<Result> {
//   String get resultPhrase {
//     String resultText = 'You did it!';
//
//     if (widget.resultScore <= 8) {
//       resultText = 'You are awesome and innocent!';
//     } else if (widget.resultScore <= 12) {
//       resultText = 'Pretty likeable!';
//     } else if (widget.resultScore <= 16) {
//       resultText = 'You are... strange?!';
//     } else {
//       resultText = 'You are so bad!';
//     }
//     return resultText;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Text(
//             resultPhrase,
//             style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//           ElevatedButton(
//             child: Text('Restart Quiz!'),
//             onPressed: () =>widget.resetHandler, // Use widget.resetHandler here
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore,this.resetHandler,{key=Key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String get resultPhrase {
    String resultText = 'You did it!';

    if (widget.resultScore <= 200) {
      resultText = 'You are awesome and innocent!';
    } else if (widget.resultScore <= 300) {
      resultText = 'Pretty likeable!';
    } else if (widget.resultScore <= 400) {
      resultText = 'You are... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,

          ),
        ElevatedButton(
            child:Text('Restart Quiz!', ),
            onPressed: ()=> widget.resetHandler,
          )
        ],
      ),
    );
  }
}

