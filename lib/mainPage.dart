import 'package:flutter/material.dart';

/**
 * 主页
 */
class MainHomePage extends StatelessWidget{
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
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          title: Text("首页"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          title: Text("体系"),
          icon: Icon(Icons.apps),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          title: Text("项目"),
          icon: Icon(Icons.insert_drive_file),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          title: Text("我的"),
          icon: Icon(Icons.people),
        ),
      ],
      ),
    );
  }

}
