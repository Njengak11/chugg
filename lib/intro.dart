
import 'package:chugg/home.dart';
import 'package:flutter/material.dart';                    
import 'package:google_fonts/google_fonts.dart';


class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
      child: Center(
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            Row(),
            Padding(padding: 
            EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
            child: Container(
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:20.0),
                  Center(
                    
                    child:Image.asset(
                      'assets/logo.png'
                    )
                  ),
                 SizedBox(height:50.0),
                 Text(
                   'For afternoons with  the boys and crazy nights out keep track of your drinks',
                   style: GoogleFonts.pacifico(
                     fontSize:35.0,
                     color: Colors.yellowAccent[700],
                     fontWeight: FontWeight.w300
                   ),
                 )  
                ],
              )
            ),
            )
          ],
        )
      ),
      ),
      floatingActionButton: FloatingActionButton(
backgroundColor: Colors.yellowAccent[700],
elevation: 2.0,
child: Icon(Icons.arrow_forward,
color: Colors.white),
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