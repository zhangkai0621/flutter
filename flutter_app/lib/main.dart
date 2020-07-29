/*
 * @description: 入口文件
 * @Author: zhangkai
 * @Date: 2020-07-29 14:25:58
 * @LastEditors: zhangkai
 * @LastEditTime: 2020-07-29 15:44:43
 */ 
import 'package:flutter/material.dart';

// 引入文件
import 'package:flutter_app/home/index.dart';
import 'package:flutter_app/router/newRoute.dart';
import 'package:flutter_app/router/params.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/", // 初始化路由
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 注册路由表
      routes: {
        "new_page": (context) => NewRoute(),
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        "params": (context) => RouterTestRoute(),
        "tip2": (context) {
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        }
      },
    );
  }
}







