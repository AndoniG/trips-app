import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class TripsAppCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(backgroundColor: Color(0x33FFFFFF), items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, color: Colors.purple),
              icon: Icon(Icons.home, color: Colors.indigo),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search, color: Colors.purple),
              icon: Icon(Icons.search, color: Colors.indigo),
              label: ""),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person, color: Colors.purple),
              icon: Icon(Icons.person, color: Colors.indigo),
              label: ""),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
      ),
    );
  }
}
