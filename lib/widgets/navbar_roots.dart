import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/home_screen.dart';
import 'package:medical_healthcare/screens/messages_screen.dart';
import 'package:medical_healthcare/screens/schedule_screen.dart';
import 'package:medical_healthcare/screens/settings_screen.dart';

class NavbarRoots extends StatefulWidget{
  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {

  int _selectedIndex = 0;
  final _screens = [
    // Home Screen
    HomeScreen(),
    // Messages Screen
    MessagesScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Settings Screen
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Messages",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: "Schedule",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}