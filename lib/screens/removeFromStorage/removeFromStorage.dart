/*  This is what the remove from storgae page will look like

 */

import 'package:flutter/material.dart';
import 'package:synthexklutchvendor/screens/clothes/clothes.dart';
import 'package:synthexklutchvendor/shared/navigationBar.dart';

class RemoveFromStorage extends StatefulWidget {
  @override
  _RemoveFromStorageState createState() => _RemoveFromStorageState();
}

class _RemoveFromStorageState extends State<RemoveFromStorage> {
  String searchValue = "Empty";
  String cardText = "Category: Womens' Dresses\nColor: Blue\nStock: 190\nPrice: CAD 400";

  void goToPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Clothes())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Image(image: AssetImage("images/Logo_Solo.png")),
              ),
              TextFormField(
                onChanged: (val) {
                  setState(() {
                    searchValue = val;
                  });
                },
              ),
              SizedBox(height: 5,),
              RaisedButton(
                  onPressed: () {
                    //Search for the required item
                    print(searchValue);
                  },
                color: Colors.amber,
                child: Text("Search"),
              ),
              SizedBox(height: 5,),
              Column(
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("1",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("2",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("3",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("4",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("5",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text("6",style: TextStyle(fontSize: 25),),
                        SizedBox(width: 5,),
                        Text(cardText),
                        SizedBox(width: 10,),
                        FlatButton(
                            onPressed: () {
                              //go to viewed page
                              setState(() {
                                print("View");
                                goToPage();
                              });
                            },
                            child: Text("View")
                        ),
                        SizedBox(width: 5,),
                        FlatButton(
                            onPressed: () {
                              //Remove from db
                              print("Remove");
                            },
                            child: Text("Remove")
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
