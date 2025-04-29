import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:flutter/material.dart';

class STDetails extends StatelessWidget {
  const STDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth * 0.95,
      height: screenHeight * 0.195,
      child: Padding(
        padding: EdgeInsets.all(screenHeight * 0.015),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/person.png",
                width: screenWidth * 0.20,
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "${CurrentActiveUser.firstname ?? ''} "
                              "${(CurrentActiveUser.middlename?.isNotEmpty ?? false) ? '${CurrentActiveUser.middlename![0]}. ' : ''}"
                              "${CurrentActiveUser.lastname ?? ''}"
                          .trim(),
                      style: TextStyle(
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                    Text(
                      "${CurrentActiveUser.contactnumber}",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                  ],
                ),
              ),
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
