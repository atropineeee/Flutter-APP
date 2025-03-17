import 'package:flutter/material.dart';

class HPProfile extends StatelessWidget {
  const HPProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.1,
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
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.025),
        child: Row(
          children: [
            Image.asset("assets/person.png"),
            SizedBox(
              width: screenWidth * 0.025,
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Juan B. Dela Cruz",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                    Text(
                      "Contact: 09123456789",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
