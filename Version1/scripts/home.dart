import 'package:flutter/material.dart';
import 'widgets/infocard.dart';
import 'widgets/selectionpanel.dart';
import 'widgets/newspanel.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(const HomePanel());
}

class HomePanel extends StatelessWidget {
  const HomePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logo_1.png',
                      width: 60,
                      height: 60,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/logo_2.png',
                      width: 60,
                      height: 60,
                    ),
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
              Navbars(
                onItemSelected: (String buttonID) {
                  navbarFunctions.clickedButton(buttonID);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavbarFunctions {
  void clickedButton(String buttonID) {
    switch (buttonID) {
      case "Home":
        break;
      case "News":
        break;
      case "QR Code":
        break;
      case "Account":
        break;
      case "Settings":
        break;
      default:
        break;
    }
  }
}

final navbarFunctions = NavbarFunctions();
