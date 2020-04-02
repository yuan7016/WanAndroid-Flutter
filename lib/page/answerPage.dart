
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 问答
 */
class AnswerFragmentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AnswerPageState();
  }

}

class AnswerPageState extends State<AnswerFragmentPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("问答"),
      ),
    );
  }

}