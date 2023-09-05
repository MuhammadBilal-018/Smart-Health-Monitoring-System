import 'package:flutter/material.dart';

import 'Doctor Profile/doctor_profile.dart';
import '../Dashboard/main_dashboard.dart';
import 'notification _screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final List<Widget> pages = [
    DashboardScreen(),
    Notication(),
    DoctorProfileScreen(),
  ];
  int _indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_indexSelected],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff0D47A1),
        unselectedItemColor: Colors.black,
        currentIndex: _indexSelected,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (value) {
          _indexSelected = value;
          setState(() {});
        },
      ),
    );
  }
}
