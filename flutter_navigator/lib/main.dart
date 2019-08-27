import 'package:flutter/material.dart';

/* void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'navigator',
            home: Scaffold(
                appBar: new AppBar(
                    title: new Text('页面跳转'),
                ),
            ),
        );
    }
} */
void main(){
    runApp(MaterialApp(
        title: 'navigator',
        home: new FirsrScreen()
    ));
}

class FirsrScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('导航页面'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('点击跳转'),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => new SecondScreen()
                        ));
                    },
                ),
            ),
        );
    }
}

class SecondScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('第二页'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('返回'),
                    onPressed: (){
                        Navigator.pop(context);
                    },
                ),
            ),
        );
    }
}