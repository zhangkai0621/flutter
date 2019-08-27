/*
 * @Description: 卡片列表
 * @Author: zhangkai
 * @Date: 2019-08-27 15:11:42
 * @LastEditTime: 2019-08-27 15:41:37
 * @LastEditors: zhangkai
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){

        var card = new Card(
            child: new Column(
                children: <Widget>[
                    ListTile(
                        title: new Text(
                            '湖南省长沙市开福区',
                            style: (
                                TextStyle(
                                    fontWeight: FontWeight.w500
                                )
                            )
                        ),
                        subtitle: new Text('电话：13512344321'),
                        leading: new Icon(Icons.add_comment, color: Colors.lightBlue)
                    ),
                    new Divider(), // 分割线
                    ListTile(
                        title: new Text(
                            'Royal Never Give up',
                            style: (
                                TextStyle(
                                    fontWeight: FontWeight.w500
                                )
                            )
                        ),
                        subtitle: new Text('电话：13512344321'),
                        leading: new Icon(Icons.add_comment, color: Colors.lightBlue)
                    ),
                    new Divider(), // 分割线
                    ListTile(
                        title: new Text(
                            '天心区南湖路沙湖街',
                            style: (
                                TextStyle(
                                    fontWeight: FontWeight.w500
                                )
                            )
                        ),
                        subtitle: new Text('电话：13512344321'),
                        leading: new Icon(Icons.add_comment, color: Colors.lightBlue)
                    ),
                ],
            ),
        );
        return MaterialApp(
            title: 'Card Widget',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('卡片列表'),
                ),
                body: new Center(
                    child: card,
                ),
            ),
        );
    }
}