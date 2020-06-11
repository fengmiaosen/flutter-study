// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './routes/new_route.dart';
import './routes/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    final words = WordPair.random();

    return MaterialApp(
        title: 'flutter app!',
        // 注册路由表
        routes: {
          'new_page': (context) => NewRoute(),
        },
        home: Scaffold(
          appBar: AppBar(
            title: Text(words.asCamelCase)
          ),
          // appBar: AppBar(title: Text('首页')),
          // body: Center(child: Text('首页主体区域！'),),
          body: MyHomePage(
            title: 'Flutter Demo Home Page',
          )
        )
    );

  }
}
