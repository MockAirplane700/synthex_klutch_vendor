/*  This will hold how the image slider page will look like

 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:synthexklutchvendor/shared/navigationBar.dart';

class Clothes extends StatefulWidget {
  @override
  _ClothesState createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  List<String> imgList = [
    "https://ae01.alicdn.com/kf/HTB1FToxi8mWBuNkSndVq6AsApXaV/Trendy-Summer-Women-clothes-Sleeveless-Floral-print-V-neck-Playsuit-Ladies-backless-Polyester-Romper-one-pieces.jpg",
    "https://i.pinimg.com/736x/ae/04/3f/ae043f8246ae0010fd71b6b55aec1674.jpg",
    "https://www.dhresource.com/0x0/f2/albu/g8/M00/35/9D/rBVaVFzZCb-AdsxlAAOZxZuA14k544.jpg"
  ];

  Widget createUnderSlider(String top, String bottom) {
    return Column(
      children: <Widget>[
        Text(top, style: TextStyle(fontWeight: FontWeight.bold),),
        Text(bottom,)
      ],
    );
  }//end create under slider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Klutch"),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("Women's Summer dress"),
              SizedBox(height: 10,),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: imgList.map((item) => Container(
                    child: Center(
                      child: Image.network(item, fit: BoxFit.cover,width: 1000,),
                    ),
                  )).toList(),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  createUnderSlider("700", "Views"),
                  SizedBox(width: 10,),
                  createUnderSlider("69", "Bids"),
                  SizedBox(width: 10,),
                  createUnderSlider("679", "In-stock"),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
