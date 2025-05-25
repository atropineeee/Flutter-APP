import 'package:cityhallappcal/settingspanel/settingsbutton_functions/settingsbutton_functions.dart';
import 'package:cityhallappcal/settingspanel/settingspanel_details.dart';
import 'package:flutter/material.dart';

class STContainer extends StatelessWidget {
  const STContainer({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final stb = STBFunctions();
    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.785,
      decoration: BoxDecoration(
        color: Color.fromARGB(200, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.015),
          child: SingleChildScrollView(
            child: Column(
              children: [
                STDetails(),
                _buildLabels("Account Settings", context),
                _buildButtons(
                    "Personal Details", context, 255, 255, 255, () {}),
                _buildButtons(
                    "Password and Security", context, 255, 255, 255, () {}),
                _buildButtons(
                    "Biometrics Login", context, 255, 255, 255, () {}),
                //
                _buildLabels("Help", context),
                _buildButtons("Tutorial", context, 255, 255, 255, () {}),
                //
                _buildLabels("Terms and Conditions", context),
                _buildButtons("About Us", context, 255, 255, 255, () {}),
                _buildButtons("About this App", context, 255, 255, 255, () {}),
                _buildButtons("Log Out", context, 255, 120, 120,
                    () => stb.logOutUser(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtons(String label, BuildContext context, int r, int g, int b,
      VoidCallback onTap) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
      child: Material(
        color: Color.fromARGB(255, r, g, b),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.060,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.035),
              child: Text(
                label,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "CenturyGothic",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabels(String label, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
      child: Material(
        color: Color.fromARGB(255, 70, 70, 70),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.055,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.035),
            child: Text(
              label,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "CenturyGothic",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
