import 'package:flutter/material.dart';

class History extends StatelessWidget {
const History({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(  
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text('Your history')
          ],
        ),
      ),
          );
  }
}