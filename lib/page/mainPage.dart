import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wan_android_flutter/constant.dart';

/**
 * 主页
 */
class MainHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "主页",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }

}


class MyHomeState extends State<HomePage>{

  int _currentIndex = 0;
  String _title = "首页";

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Fluttertoast.showToast(msg: "搜索");
          })
        ],
      ),
      drawer: HomeDrawer(),
      body: Center(
        child: Text("This is $_title"),
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
            title: Text("问答"),
            icon: Icon(Icons.live_help),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text("体系"),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text("项目"),
            icon: Icon(Icons.folder_special),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
            setState(() {
              _currentIndex = index;
              _title = Constant.pageNameList[index];
              print("==cueeentIndex==$_currentIndex");
            });
        },
      ),
    );
  }

}

class HomeDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
            height: 300,
            child: Column(
              children: <Widget>[
                Image.asset("images/img_wanandroid_logo.png"),
                Text("请登录")
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.loyalty),
            title: Text('我的收藏'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ],
      ),
    );
  }
}
