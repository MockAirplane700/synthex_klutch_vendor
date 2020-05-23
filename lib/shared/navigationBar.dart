/*  This is going to be the app's bottom nav bar

 */
import 'package:flutter/material.dart';
import 'package:synthexklutchvendor/screens/addToStorage/addToStorage.dart';
import 'package:synthexklutchvendor/screens/home/home.dart';
import 'package:synthexklutchvendor/screens/removeFromStorage/removeFromStorage.dart';

class NavigationBar extends StatefulWidget {
  int index;

  NavigationBar({this.index}){

  }

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const TextStyle optionsStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );
  
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionsStyle,
    ),
    Text(
      'Index 1: Add',
      style: optionsStyle,
    ),
    Text(
      'Index 2: Remove',
      style: optionsStyle,
    )
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
      if(_selectedIndex == 0) {
        //go to the home page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home(),
            settings: RouteSettings(
              arguments: _selectedIndex
            )
            )
        );
      } else if(_selectedIndex == 1){
        // go to the additions page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddToStorage(),
              settings: RouteSettings(
                arguments: _selectedIndex
              )
            )
        );
      }else{
        //go to the last page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RemoveFromStorage(),
              settings: RouteSettings(
                arguments: _selectedIndex
              )
            )
        );
      }//end if-else
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text("Add")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove),
          title: Text("Remove")
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
