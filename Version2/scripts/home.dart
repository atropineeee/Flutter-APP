import 'package:flutter/material.dart';
import 'widgets/infocard.dart';
import 'widgets/selectionpanel.dart';
import 'widgets/newspanel.dart';
import 'widgets/navbar.dart';
import 'panels/notifications.dart';
import 'panels/accounts.dart';

void main() {
  runApp(const MaterialApp(home: HomePanel()));
}

class HomePanel extends StatefulWidget {
  const HomePanel({super.key});

  @override
  HomePanelState createState() => HomePanelState();
}

class HomePanelState extends State<HomePanel> {
  String selectedPanel = "Home";

  void _onNavItemSelected(String buttonID) {
    setState(() {
      selectedPanel = buttonID;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 255, 175, 5),
              Color.fromARGB(255, 190, 170, 5),
              Color.fromARGB(255, 65, 140, 5)
            ],
          ),
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (selectedPanel == "Home") ...[
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/logo_1.png', width: 60, height: 60),
                      const Spacer(),
                      Image.asset('assets/logo_2.png', width: 60, height: 60),
                    ],
                  ),
                ),
                UserInfoCard(
                  userName: "Juan B. Dela Cruz",
                  contactNumber: "09123456792",
                  profileImage: "assets/person.png",
                ),
                SelectionPanel(),
                NewsPanel(),
              ] else if (selectedPanel == "Notifications") ...[
                Notifs(),
              ] else if (selectedPanel == "QR") ...[
                Expanded(
                  child: Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(170, 0, 0, 0)),
                    ),
                  ),
                ),
              ] else if (selectedPanel == "Account") ...[
                Accnts(),
              ] else if (selectedPanel == "Settings") ...[
                Expanded(
                  child: Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(170, 175, 175, 175)),
                    ),
                  ),
                ),
              ],
              Navbars(onItemSelected: _onNavItemSelected),
            ]),
      ),
    );
  }
}
