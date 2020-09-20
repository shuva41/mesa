import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.thumbs_up_down,
          ),
          title: Text(
            'Partner',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_shipping,
          ),
          title: Text(
            'Delivery',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.stars,
          ),
          title: Text(
            'Awards',
          ),
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Color(0xff49e9e9),
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(
        color: Color(0xff49e9e9),
      ),
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
