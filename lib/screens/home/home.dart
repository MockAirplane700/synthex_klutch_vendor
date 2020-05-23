/*  The home page will hold the profile page of the vendor

 */

import 'package:flutter/material.dart';
import 'package:synthexklutchvendor/screens/clothes/clothes.dart';
import 'package:synthexklutchvendor/shared/navigationBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String companyLogo = "https://cdn.pixabay.com/photo/2015/10/21/08/22/media-998990_960_720.jpg";
  String companyName = "Mobile Services ltd";
  String companyLocation = "1120 Grant Ave \nUnit 3904 \nWinnipeg, Manitoba\nR2M2J8,\nCanada";

  String cardText = "Category: Womens' Dresses\nColor: Blue\nStock: 190\nPrice: CAD 400";

  @override
  Widget build(BuildContext context) {

    int selectedIndex = ModalRoute.of(context).settings.arguments;

    void goToPage() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Clothes())
      );
    }
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //The first part that holds the store logo and information
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            //holds the information about the store
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: NetworkImage(companyLogo),
                                radius: 50
                              ),
                              SizedBox(width: 150,),
                              Column(
                                children: <Widget>[
                                  Text(companyName),
                                  Text(companyLocation),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SingleChildScrollView(
                              child: Column(
                                //Holds the list of cards with images and their respective stats
                                  children: <Widget>[
                                    Card(
                                      child: Row(
                                        children: <Widget>[
                                          Image(
                                            image: NetworkImage("https://image.shutterstock.com/z/stock-photo-collection-of-women-s-summer-clothes-yellow-bright-dress-with-accessories-on-wooden-background-403841710.jpg"),
                                            height: 200,
                                            width:  200,
                                          ),
                                          SizedBox(width: 15,),
                                          Column(
                                            children: <Widget>[
                                              Text("Women's Dresses\nCurrent Inventory: 2000\nPast Bids on category: 35\nTotal cost on category: CAD 5000", style: TextStyle(
                                                fontSize: 9
                                              ),),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            child: Row(
                              children: <Widget>[
                                Text("1",style: TextStyle(fontSize: 25),),
                                SizedBox(width: 5,),
                                Text(cardText),
                                SizedBox(width: 80,),
                                FlatButton(
                                    onPressed: () {
                                      //go to viewed page
                                      setState(() {
                                        print("View");
                                        goToPage();
                                      });
                                    },
                                    child: Text("View")
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Card(
                            child: Row(
                              children: <Widget>[
                                Text("2",style: TextStyle(fontSize: 25),),
                                SizedBox(width: 5,),
                                Text(cardText),
                                SizedBox(width: 80,),
                                FlatButton(
                                    onPressed: () {
                                      //go to viewed page
                                      setState(() {
                                        print("View");
                                        goToPage();
                                      });
                                    },
                                    child: Text("View")
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Card(
                            child: Row(
                              children: <Widget>[
                                Text("3",style: TextStyle(fontSize: 25),),
                                SizedBox(width: 5,),
                                Text(cardText),
                                SizedBox(width: 80,),
                                FlatButton(
                                    onPressed: () {
                                      //go to viewed page
                                      setState(() {
                                        print("View");
                                        goToPage();
                                      });
                                    },
                                    child: Text("View")
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Card(
                            child: Row(
                              children: <Widget>[
                                Text("4",style: TextStyle(fontSize: 25),),
                                SizedBox(width: 5,),
                                Text(cardText),
                                SizedBox(width: 80,),
                                FlatButton(
                                    onPressed: () {
                                      //go to viewed page
                                      setState(() {
                                        print("View");
                                        goToPage();
                                      });
                                    },
                                    child: Text("View")
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    RaisedButton(
                        onPressed: () {
                          setState(() {
                            print("Logout");
                          });
                        },
                      child: Text("Logout"),
                    )
                  ],
                ),
              ),
          )
      ),
    );
  }
}
