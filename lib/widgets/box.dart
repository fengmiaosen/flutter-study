
import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return  ConstrainedBox( 
      constraints: BoxConstraints( 
        minWidth: double.infinity,
        minHeight: 100
      ),
      child: Container( 
        height: 8,
        child: DecoratedBox( 
          decoration: BoxDecoration(color: Colors.green),
        ),
      ),
    );
  }
  
}