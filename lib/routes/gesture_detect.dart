import 'package:flutter/material.dart';

class GestureDetectorTest extends StatefulWidget {
  @override
  _GestureDetectorTestState createState() {
    return _GestureDetectorTestState();
  }
}

class _GestureDetectorTestState extends State<GestureDetectorTest> {
  String _operation = 'No gesture detected!!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('gesture detect page'),
        ),
        body: Center(
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              width: 200.0,
              height: 100.0,
              child: Text(
                _operation,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () => _updateText('tap'),
            onDoubleTap: () => _updateText('double tap'),
            onLongPress: () => _updateText('long press'),
          ),
    ));
  }

  void _updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
