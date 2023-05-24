import 'package:flutter/material.dart';
import '../Dashboard/main_dashboard.dart';
import '../Bottom Navigation/Doctor Profile/doctor_profile.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    // Handle the tap event
    setState(() {
      _currentIndex = index;
      switch (_currentIndex) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
          break;

          break;
        case 1:
          // Handle the profile screen
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DoctorProfileScreen()),
          );
          break;
      }
    });
  }
}
