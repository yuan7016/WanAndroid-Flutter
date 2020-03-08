import 'package:flutter/material.dart';


//void main() {
//  runApp(MySplashApp());
//}

class MySplashApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "启动页",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashPage(),
    );
  }
}

class MySplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("WanAndroid For Flutter"),
          Text("by yuan7016"),
        ],
      ),
    );
  }
}

