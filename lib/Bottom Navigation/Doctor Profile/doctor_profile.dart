import 'package:flutter/material.dart';
import '../bottom_navigation_bar.dart';
import '../../AppBar/app_bar.dart';

void main() {
  runApp(
    MaterialApp(
      home: DoctorProfileScreen(),
    ),
  );
}

class DoctorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppBar(title: 'Home',),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Doctor Profile',
                style: TextStyle(
                  color: Color(0xFF0071C5),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
            ),
          ),
          Container(
          margin: EdgeInsets.only(top: 54),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    //color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('images/image_profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Rahmat Ullah',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '+92 300 0000000',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Container(
                  width: 52,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0x0D47A1).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Color(0xFF4CAF50),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
