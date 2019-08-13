import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {   
	@override 
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'By zhangkai',
			home: Scaffold(
				appBar: new AppBar(
					title: new Text('Hellow Flutter'),
				),
				body: new ListView(
                    children: <Widget>[
                        new ListTile(
                            leading: new Icon(Icons.add_circle),
                            title: new Text('zhangkai'),
                        ),
                        new ListTile(
                            leading: new Icon(Icons.android),
                            title: new Text('Richard'),
                        )
                    ],
                )
			),
		);
	}
}
