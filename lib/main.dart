
import 'package:chugg/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData(
primaryColor:Colors.purple[700],
),
home: Main(),
);
}
}

class Main extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.purple[700],
appBar: AppBar(
title:Text('Chugg',
style:GoogleFonts.pacifico(
  fontSize: 30.0,
color:Colors.white),
),
centerTitle:true,
elevation:0.0
),
body: Container(
child:Center(
  
child:Column(

crossAxisAlignment:CrossAxisAlignment.start,
children:<Widget>[
 
Row(),
Padding(
padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
child:Container(
child:Column( 
crossAxisAlignment:CrossAxisAlignment.start,
children:<Widget>[
Center(
  child:
Image.asset('assets/beer.png')
),

SizedBox(height:20),
Text('Keep track of your drinks on those crazy nights',
textAlign: TextAlign.center,
style:GoogleFonts.pacifico(
fontSize: 30.0,
color: Colors.white,
fontWeight: FontWeight.w300
),
),
  
]
)
),
),
]
)
),
),
floatingActionButton: FloatingActionButton(
backgroundColor: Colors.purpleAccent,
elevation: 2.0,
child: Icon(Icons.arrow_forward,
color: Colors.purple[700],),
onPressed: () {
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)
  => Home(),
      ),
      );
    }
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    
    }
  
    
}
