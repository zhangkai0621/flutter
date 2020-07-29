/*
 * @description: 路由传参学习
 * @Author: zhangkai
 * @Date: 2020-07-29 14:35:14
 * @LastEditors: zhangkai
 * @LastEditTime: 2020-07-29 15:45:23
 */ 
import 'package:flutter/material.dart';

// 路由传值
class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text, // 接受一个 text 参数
  }) : super(key: key);
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "2"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// 打开新路由 TipRoute
class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("路由传参返回后"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            // 打开`TipRoute`，并等待返回结果
            var reult = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return TipRoute(
                        // 路由参数
                        text: "我是提示页",
                      );
                    }
                )
            );
            print("路由返回参数：$reult");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}