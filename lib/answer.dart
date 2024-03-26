import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  // Corrected constructor
  const Answer(this.selectHandler,  this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // Removed const keyword from here
        onPressed: () => selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Answer extends StatelessWidget {
//   final Function selectHandler;
//  Answer(this.selectHandler,{super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: const ElevatedButton(
//         child:Text('Answer 1'),
//         onPressed:selectHandler,
//       ),
//     );
//   }
// }


