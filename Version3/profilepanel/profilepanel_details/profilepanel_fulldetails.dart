import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:flutter/material.dart';

class PPFullDetails extends StatelessWidget {
  const PPFullDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenHeight * 0.015),
          child: Column(
            children: [
              _buildAligns(context, "Birthdate", 15),
              _buildAligns(context, "${CurrentActiveUser.birthdate}", 20),
              SizedBox(height: screenHeight * 0.015),
              _buildAligns(context, "Nationality", 15),
              _buildAligns(context, "${CurrentActiveUser.nationality}", 20),
              SizedBox(height: screenHeight * 0.015),
              _buildAligns(context, "Email Address", 15),
              _buildAligns(context, "${CurrentActiveUser.email}", 20),
              SizedBox(height: screenHeight * 0.015),
              _buildAligns(context, "Current Address", 15),
              _buildAligns(context, "${CurrentActiveUser.address}", 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAligns(BuildContext context, String text, double fontSize) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text.trim(),
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          fontFamily: "CenturyGothic",
        ),
      ),
    );
  }
}
