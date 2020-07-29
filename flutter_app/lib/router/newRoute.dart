/*
 * @description: 打开新路由
 * @Author: zhangkai
 * @Date: 2020-07-29 14:43:55
 * @LastEditors: zhangkai
 * @LastEditTime: 2020-07-29 14:45:11
 */ 

import 'package:flutter/material.dart';

// 新增路由管理
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}