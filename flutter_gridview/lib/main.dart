import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'GridView',
			home: Scaffold(
				appBar: new AppBar(
					title: new Text('Hello GridView'),
				),
				// 写法一
				/* body: GridView.count(
					padding:  const EdgeInsets.all(20.0), // 内边距
					crossAxisSpacing:  10.0, // 横向网格间间距
					crossAxisCount: 3, // 一行的列数
					children: <Widget>[
						const Text('zhangkai'),
						const Text('Richard'),
						const Text('looking'),
						const Text('喜欢吃烧烤'),
						const Text('喜欢旅行'),
						const Text('喜欢打游戏')
					],
				), */
				// 写法二
				body: GridView(
					gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
						crossAxisCount: 3, // 一行3列
						mainAxisSpacing: 10.0, // 纵向网格间距
						crossAxisSpacing: 10.0, // 横向网格间距
						childAspectRatio: 1, // 宽高比
					),
					padding: const EdgeInsets.all(20.0),
					children: <Widget>[
						new Image.network('http://img5.mtime.cn/mg/2019/08/23/095235.99996809.jpg', fit: BoxFit.cover),
						new Image.network('http://img5.mtime.cn/mg/2019/08/23/095235.99996809.jpg', fit: BoxFit.cover),
						new Image.network('http://img5.mtime.cn/mg/2019/08/23/095235.99996809.jpg', fit: BoxFit.cover),
						new Image.network('http://img5.mtime.cn/mg/2019/08/24/095328.83985239_285X160X4.jpg', fit: BoxFit.cover),
						new Image.network('http://img5.mtime.cn/mg/2019/08/24/095328.83985239_285X160X4.jpg', fit: BoxFit.cover),
						new Image.network('http://img5.mtime.cn/mg/2019/08/24/095328.83985239_285X160X4.jpg', fit: BoxFit.cover)
					],
				),
			),
		);
	}
}