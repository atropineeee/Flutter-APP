import 'package:cityhallappcal/profilepanel/profilepanel_details.dart';
import 'package:flutter/material.dart';

class PPPanel extends StatelessWidget {
  const PPPanel({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.05),
        SizedBox(
          width: screenWidth * 0.95,
          height: screenHeight * 0.065,
          child: Row(
            children: [
              Image.asset(
                "assets/logo_1.png",
                width: screenWidth * 0.2,
              ),
              Spacer(),
              Image.asset(
                "assets/logo_2.png",
                width: screenWidth * 0.2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.815,
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.025),
                PPDetails(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
