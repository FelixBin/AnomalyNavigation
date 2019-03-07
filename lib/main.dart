import 'package:flutter/material.dart';

import 'bottom_appBar_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo02',
      //自定义主题样本
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
      home: BottomAppBarDemo(),//调用组件
    );
  }
}