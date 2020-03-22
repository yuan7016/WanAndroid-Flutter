import 'package:flutter/material.dart';
import 'package:wan_android_flutter/page/mainPage.dart';

//void main() {
//  runApp(MySplashApp());
//}
/**
 * 启动页
 */
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "启动页",
      routes: {
        "splash_page" : (context) => SplashPage(),
        "home_page" : (context) => MainHomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashPage(),
    );
  }
}

class MySplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySplashState();
  }
}

class MySplashState extends State<MySplashPage> {
  @override
  void initState() {
    super.initState();
    //延迟两秒跳转
    Future.delayed(Duration(seconds: 2), () {
      //延迟两秒跳转
      Navigator.popAndPushNamed(context, "home_page");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/img_android_logo.png"),
              Text(
                "WanAndroid for Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text("version 1.0",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
