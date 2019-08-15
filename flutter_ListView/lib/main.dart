import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    // arr: List(), // 不固定长度的 List，相当于数组
    items: new List<String>.generate(1000, (i) => "Item $i")
));

class MyApp extends StatelessWidget {
    // 声明一个常量为 List 类型
    final List<String> items;
    // @required 表示必须传入一个参数
    MyApp({Key key, @required this.items}):super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Richard',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('Hello Flutter'),
                ),
                body: new ListView.builder( // new 一个动态加载的 ListView
                    itemCount: items.length, // 需要生产多少条数据、
                    itemBuilder: (context, index) {
                        return new ListTile(
                            title: new Text('${items[index]}'),
                        );
                    },
                ),
            ),
        );
    }
}

