/*  This will house the UI for adding stuff to the DB 

 */

import 'package:flutter/material.dart';
import 'package:synthexklutchvendor/screens/cameraScanner/cameraScanner.dart';
import 'package:synthexklutchvendor/shared/navigationBar.dart';

class AddToStorage extends StatefulWidget {
  @override
  _AddToStorageState createState() => _AddToStorageState();
}

class _AddToStorageState extends State<AddToStorage> {
  final _formKey = GlobalKey<FormState>();

  String price = "0.00";
  String percentageDiscount = "0%";
  String maxPrice = "0";
  String minPrice = "0";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Add item to Platform"),
                SizedBox(height: 10,),
                Form(
                  key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Name"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Product Producer"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Label Name"
                          ),

                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Country it was made "
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Promotion discount"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Price"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Max Price"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Min Price"
                          ),
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? 'Please enter Product Name':null,
                          onChanged: (val) {
                            setState(() {
                              String string = val;
                              print(string);
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Item description"
                          ),
                          maxLines: 20,
                        ),
                        RaisedButton(
                          onPressed: () {
                            if(_formKey.currentState.validate()){
                              setState(() {
                                //Scan the barcode and upload, go to the page and return a function complete message
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CameraScanner())
                                );
                              });
                            }
                          },
                          child: Text("Scan and upload"),

                        ),
                        SizedBox(height: 15,),
                        Text(error, style: TextStyle(color: Colors.red),)
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
