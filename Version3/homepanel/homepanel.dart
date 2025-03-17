import 'package:cityhallappcal/homepanel/homepanel_news.dart';
import 'package:cityhallappcal/homepanel/homepanel_profile.dart';
import 'package:cityhallappcal/homepanel/homepanel_selection.dart';
import 'package:flutter/material.dart';

class HomePanel extends StatelessWidget {
  const HomePanel({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        // This Part is the Top Navigation Bar
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
        // This part is for the Info Card
        SizedBox(height: screenHeight * 0.015),
        HPProfile(),
        // This Part is for the Selection Panel
        SizedBox(height: screenHeight * 0.015),
        HPSelection(),
        // This Part is for the News Panel
        SizedBox(height: screenHeight * 0.015),
        HPNews(),
      ],
    );
  }
}
