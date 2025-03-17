import 'package:cityhallappcal/homepanel/homepanel.dart';
import 'package:cityhallappcal/notificationpanel/notifpanel.dart';
import 'package:cityhallappcal/profilepanel/profilepanel.dart';
import 'package:cityhallappcal/qrpanel/qrpanel.dart';
import 'package:cityhallappcal/settingspanel/settingspanel.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  HomepageUI createState() => HomepageUI();
}

class HomepageUI extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: (_selectedIndex == 1 || _selectedIndex == 2)
          ? AppBar(
              title: Text(
                _selectedIndex == 1 ? "Notifications" : "Scan QR Code",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              toolbarHeight: screenHeight * 0.05,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(90, 255, 176, 5),
                      Color.fromARGB(90, 190, 170, 5),
                      Color.fromARGB(90, 65, 140, 5),
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.black,
            )
          : null,
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 175, 5),
                Color.fromARGB(255, 190, 170, 5),
                Color.fromARGB(255, 65, 140, 5)
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (_selectedIndex == 0) ...[
                HomePanel(),
              ] else if (_selectedIndex == 1) ...[
                NTPanel(),
              ] else if (_selectedIndex == 2) ...[
                QRPanel(),
              ] else if (_selectedIndex == 3) ...[
                PPPanel(),
              ] else if (_selectedIndex == 4) ...[
                STPanel(),
              ]
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Scan QR'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
