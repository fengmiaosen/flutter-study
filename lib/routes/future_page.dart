
import 'package:flutter/material.dart';

class FuturePageWidget extends StatefulWidget {

  @override
  _FuturePageWidgetState createState() {
    return _FuturePageWidgetState();
  }
  
}

class _FuturePageWidgetState extends State<FuturePageWidget>{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( 
        title: Text('future title'),
      ),
      body: Center( 
      child: FutureBuilder<String>( 
        future: mockNetworkData(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }else{
              return Text('Contents: ${snapshot.data}');
            }
          }else{
            return CircularProgressIndicator();
          }
        },
      ),
    )
    );
  }

}

Future<String> mockNetworkData() async {
  return Future.delayed(
    Duration(seconds: 2), 
    () => 'fetch data!!!'
  );
}