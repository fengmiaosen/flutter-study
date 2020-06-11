// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import './home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'flutter app!',
        home: Scaffold(
          appBar: AppBar(title: Text('首页')),
          // body: Center(child: Text('首页主体区域！'),),
          body: MyHomePage(title: 'Flutter Demo Home Page',)
        )
    );

  }
}
