/*
 * @description: 首页
 * @Author: zhangkai
 * @Date: 2020-07-29 15:09:14
 * @LastEditors: zhangkai
 * @LastEditTime: 2020-07-29 15:47:31
 */ 
import 'package:flutter/material.dart';

import 'package:flutter_app/router/params.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              child: Text("Open new Route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_page");
                // 导航到新路由
              },
            ),
            FlatButton(
              child: Text("路由传参"),
              textColor: Colors.blue,
              onPressed: () {
                // 导航到新路由
                Navigator.pushNamed(context, "params");
                // Navigator.of(context).pushNamed("tip2", arguments: "hi"); // 带参数的传法
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}