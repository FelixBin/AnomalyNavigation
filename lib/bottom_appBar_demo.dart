import 'package:flutter/material.dart';
import 'each_view.dart';

//动态组件
class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView; //创建视图数组
  int _index = 0; //数组索引，通过改变索引值改变视图

  @override
  void initState() {
    _eachView = List();
    _eachView..add(EachView("HOME"))..add(EachView("BUS"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _eachView[_index], //切换页面
        floatingActionButton: FloatingActionButton(
          onPressed: () {//跳转到新页面
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return EachView('New Page');
            }));
          },
          tooltip: '你长按我了哦',
          child: Icon(Icons.add, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),//有缺口的圆形矩形。
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),//图标
                color: Colors.white,//图标颜色
                onPressed: () {//按钮事件
                  setState(() {
                    _index = 0;//更换状态
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.airport_shuttle),//图标
                color: Colors.white,//图标颜色
                onPressed: () {//按钮事件
                  setState(() {
                    _index = 1;//更换状态
                  });
                },
              ),
            ],
          ),
        ));
  }
}
