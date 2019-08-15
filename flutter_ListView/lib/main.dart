import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Richard',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('Hello Flutter'),
                ),
                body: Center(
                    child: Container(
                        height: 200.0,
                        child: MyList(),
                    ),
                )
            ),
        );
    }
}

class MyList extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
                new Container(
                    width: 100.0,
                    height: 200.0,
                    color: Colors.greenAccent,
                    child: new Text(
                        'zhangkai',
                    ),
                ),
                new Container(
                    width: 100.0,
                    height: 200.0,
                    color: Colors.yellow,
                ),
                new Container(
                    width: 100.0,
                    height: 200.0,
                    color: Colors.deepOrange,
                ),
            ],
        );
    }
}