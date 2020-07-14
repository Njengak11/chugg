import 'package:chugg/tabs/history.dart';
import 'package:chugg/tabs/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
     child:Scaffold(
      appBar: AppBar( 
        title:Text('Chugg',

        style:GoogleFonts.pacifico(
        fontSize: 30.0,
           color:Colors.white),
),
centerTitle:true,
elevation:0.0,
bottom: TabBar(
  indicatorColor: Colors.white,
  tabs: [
    Tab(
      text:'Info',
    icon:Icon(Icons.info),
    ),
    Tab(
      text:'History',
    icon:Icon(Icons.access_time),
    ),
  ]
  ),
      ),
      
      body:TabBarView( 
        children: [
          Info(),
          History(),
        ],
        ),
      )
    );
  }
}