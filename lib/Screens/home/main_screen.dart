import 'package:flutter/material.dart';
import 'package:travel_app/Screens/calendar/lib/calendar_screen.dart';
import 'package:travel_app/Screens/destination/home.dart';
import 'package:travel_app/Screens/map/mapscreen.dart';
import 'package:travel_app/Screens/profile/profile_screen.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_app/components/app_bar.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DestinationScreen(),
    CalendarPage(),
    MapScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Feather.home,
              color: Colors.grey,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              Feather.home,
              color: Colors.purple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.search,
              color: Colors.grey,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              Feather.search,
              color: Colors.purple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.calendar,
              color: Colors.grey,
            ),
            title: Text('CALENDAR'),
            activeIcon: Icon(
              FontAwesome.calendar,
              color: Colors.purple,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvilIcons.location,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('PROFILE'),
            activeIcon: Icon(
              EvilIcons.location,
              color: Colors.purple,
              size: 36,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvilIcons.user,
              color: Colors.grey,
              size: 36,
            ),
            title: Text('PROFILE'),
            activeIcon: Icon(
              EvilIcons.user,
              color: Colors.purple,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
