import 'package:flutter/material.dart';

class STContainer extends StatelessWidget {
  const STContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.79,
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
                _buildContainers("Account Settings", context),
                _buildContainers("Privacy Settings", context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainers(String label, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
      child: Material(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.065,
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
}
