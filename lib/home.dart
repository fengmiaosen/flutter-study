import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // 构造函数语法糖
  // 使用this.title相当于在构造函数中为title属性赋值
  // 当前子类构造函数后面跟冒号（:）表示在函数体内调用后面的函数
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _addCounter() {
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
        child: Column(children: [
          Text('times ddd!'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
