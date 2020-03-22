import 'package:flutter/material.dart';


//首页
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppBar(
        title: Text("首页"),
      ),
    );
  }
}
