
import 'package:flutter/material.dart';

class SwitchCheckbox extends StatefulWidget{

  @override
  _SwitchCheckboxState createState() {
    return _SwitchCheckboxState();
  }
  
}

class _SwitchCheckboxState extends State<SwitchCheckbox>{

  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected=value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.red,
          onChanged: (value){
            setState(() {
              _checkboxSelected=value;
            });
          },
        )
      ],
    );
  }

  
}

