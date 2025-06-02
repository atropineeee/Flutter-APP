import 'package:cityhallappcal/main.dart';
import 'package:cityhallappcal/savecredentials/savecredentials.dart';
import 'package:cityhallappcal/settingspanel/settingslist/settingspanel_accountsecurity.dart';
import 'package:cityhallappcal/settingspanel/settingslist/settingspanel_personaldetails.dart';
import 'package:flutter/material.dart';

class STBFunctions {
  final lds = LoadingScreenUI();

  void logOutUser(BuildContext context) {
    saveCredentials("nan", "nan");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoadingScreen()),
    );
  }

  void openAccountSecurity(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => SPPAccSec(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }

  void openPersonalDetails(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => SPPDetails(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }
}
