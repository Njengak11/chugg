import 'package:flutter/material.dart';

class History extends StatelessWidget {
const History({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Container(  
           decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/craft.png'),
              )
            ) 
          );
  }
}