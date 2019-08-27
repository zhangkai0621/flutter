import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		// 层叠组件
		var stack = new Stack(
			alignment: const FractionalOffset(0.5, 0.8),
			children: <Widget>[
				new CircleAvatar(
					backgroundImage: new NetworkImage('https://flutterchina.club/images/catalog-widget-placeholder.png'),
					radius: 100.0, // 弧度
				),
				new Container(
					decoration: new BoxDecoration(
						color: Colors.lightBlue
					),
					padding: EdgeInsets.all(10.0),
					child: new Text('Hello flutter'),
				)
			],
		);

		/**
		* @description: 定位布局
		* @Author: zhangkai
		* @param : top bottom left right 相当于 CSS 绝对定位
		* @Date: 2019-08-27 15:07:34
		*/
		var position = new Stack(
			children: <Widget>[
				new CircleAvatar(
					backgroundImage: new NetworkImage('https://flutterchina.club/images/catalog-widget-placeholder.png'),
					radius: 100.0, // 弧度
				),
				new Positioned(
					top: 10.0,
					left: 10.0,
					child: new Text('zhangkai'),
				),
				new Positioned(
					bottom: 10.0,
					right: 10.0,
					child: new Text('Richard'),
				)
			],
		);

		return MaterialApp(
			title: 'Row Widget',
			home: Scaffold(
				appBar: new AppBar(
					title: new Text('水平方向布局'),
				),
				/* body: new Row( // 水平布局
					children: <Widget>[
						new RaisedButton(
							onPressed: () {}, // 点击事件
							color: Colors.redAccent,
							child: new Text(
								'Button'
							),
						),
						Expanded(
							child:new RaisedButton(
								onPressed: () {},
								color: Colors.orange,
								child: new Text('orange Button'),
							),
						),
						 new RaisedButton(
							onPressed: () {}, // 点击事件
							color: Colors.blue,
							child: new Text(
								'Button'
							),
						),
					],
				), */

				/* body: new Center(
					child: new Column( // 垂直布局
						// 交叉轴对齐方式
						crossAxisAlignment: CrossAxisAlignment.center,
						// 主轴对齐方式
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							new Text(
								'zhangkai'
							),
							new Text(
								'RichardRichardRichardRichardRichardRichardRichard'
							),
							new Text(
								'looking'
							)
						],
					),
				) */

				// 层叠布局
				body: new Center(
					child: position,
				),
			),
		);
	}
}