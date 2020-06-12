import 'package:flutter/material.dart';

import '../widgets/switch_checkbox.dart';
import '../widgets/box.dart';

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

// 下划线前缀标识符，会 强制其变成私有。
/// State状态类
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toPage(){
    Navigator.pushNamed(context, 'new_page');
  }

  void _toFuturePage(){
    Navigator.pushNamed(context, 'future_page');
  }

  void _toGesturePage(){
    Navigator.pushNamed(context, 'gesture_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          children: [
          Text('times ddd!'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline3,
          ),
          SwitchCheckbox(),
          RaisedButton(
            child: Text("jump to new page"),
            onPressed: _toPage,
          ),
          OutlineButton(
            child: Text('future request test!'),
            onPressed: _toFuturePage,
          ),
          RaisedButton(
            child: Text("gesture detect page"),
            onPressed: _toGesturePage,
          ),
          //尺寸限制容器
          BoxWidget()
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
