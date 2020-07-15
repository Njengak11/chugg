
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
int _counter = 0;

void _incrementCounter() {
  setState(() {
    _counter ++;
  });
}

    var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey _fbKey = GlobalKey();

 
  get _formKey => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child:Column(children: <Widget>[
          FormBuilder(
               key: _fbKey,
                initialValue: {
                  'date': DateTime.now(),
                  'accept_terms': false,
                },
                autovalidate: true,
                child:Column(
                  children:[
                    FormBuilderTextField(
                      attribute: 'text',
                      validators: [FormBuilderValidators.required()],
                      decoration: InputDecoration(labelText: " Name of Beverage"),
                    ),
                    SizedBox(height:30.0),
                    FormBuilderDropdown(
                      attribute: "quantity",
                     decoration: InputDecoration(labelText:'Quantity'),
                     hint: Text('Pick the quantity of your drinks'),
                     validators: [FormBuilderValidators.required()],
                     items: ['Bottles','Glasses','Shots']
                     .map((quantity) => DropdownMenuItem(
                       value: quantity,
                       child: Text("$quantity")
                       )). toList(),
                       ),
                      
                       SizedBox(height:30.0),
                       FormBuilderDateTimePicker(
                      attribute: "date",
                      inputType: InputType.date,
                      validators: [FormBuilderValidators.required()],
                      format: DateFormat("dd-MM-yyyy"),
                                            decoration: InputDecoration(labelText: "Date "),
                                          ),
                      
                       SizedBox(height:30.0),
                       Text(
                         'you have consumed this much',
                         style:GoogleFonts.pacifico(
                              fontSize: 28.0,
                              color:Colors.yellowAccent[700]),
                       ),
                           SizedBox(height:30.0),
                        Text(
                         '$_counter', 
                         style:GoogleFonts.pacifico(
                              fontSize: 30.0,
                              color:Colors.yellowAccent[700]),
                       ),
                       SizedBox(height:30.0),
                       Center(
                         child:ButtonTheme(
                            minWidth:110.0,
                           height:50.0,
                         child: RaisedButton(
                           shape: RoundedRectangleBorder(
                             borderRadius:BorderRadius.circular(50),
                           ),
                           color: Colors.yellowAccent[700],
                           onPressed: (){
                           if(_formKey.currentState.validate())
                           {
                             
                            
                           }
                         },
                         child: Text('Save',
                         style:GoogleFonts.pacifico(
                           color:Colors.white
                         )),
                         ),
                         ),
                       )


                                        ]
                                      ) ,
                                ),
                              ],
                              )
                            ),
                            ),
                            floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
                            tooltip: 'increment',
                            backgroundColor: Colors.yellowAccent[700],
                            child: Icon(Icons.add),)
                          );
                        }
                      
                        DateFormat(String s) {}
}