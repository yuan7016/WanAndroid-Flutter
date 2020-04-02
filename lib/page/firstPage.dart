import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

//首页
class HomeFragmentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomeFragmentPage> {

  List<String> _bannerList = List();
  SwiperController _swiperController;

  @override
  void initState() {
    super.initState();

    //banner数据
    _bannerList.add("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3733576393,1153517981&fm=26&gp=0.jpg");
    _bannerList.add("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3917332332,69298379&fm=26&gp=0.jpg");
    _bannerList.add("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2823862019,939801394&fm=26&gp=0.jpg");

    _swiperController = SwiperController();
    _swiperController.startAutoplay();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: Swiper(
              itemCount: _bannerList.length,
              itemBuilder: (BuildContext context,int index){
                return Image.network(_bannerList[index],fit: BoxFit.fill,);
              },
              pagination: null,//分页指示器
              control: null,//分页按钮
              controller: _swiperController,
              scrollDirection: Axis.horizontal,//水平轮播
              onTap: (int index){//点击事件
                Fluttertoast.showToast(msg: "点击了第 $index 个banner");
              },
            )
          ),
        ],
      ),
    );
  }


  @override
  void dispose() {
    _swiperController.stopAutoplay();
    _swiperController.dispose();
    super.dispose();
  }

}

