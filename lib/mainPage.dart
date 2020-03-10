import 'package:flutter/material.dart';

//void main(){
//  runApp(MyMainPageApp());
//}

class MyMainPageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "主页",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}


class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 2560,
        height: 3440,
        color: Colors.blue,
        child: Image.asset("images/img_android_logo.png"),
      ),
    );
  }

}
