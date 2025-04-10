import 'package:cityhallappcal/main.dart';
import 'package:cityhallappcal/savecredentials/savecredentials.dart';
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
}
