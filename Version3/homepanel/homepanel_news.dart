import 'package:flutter/material.dart';

class HPNews extends StatelessWidget {
  const HPNews({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.3,
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
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.045,
              child: Text(
                "Caloocan News",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "CenturyGothic",
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _imageBuilder(
                          "assets/logo_1.png",
                          screenWidth,
                          screenHeight,
                        ),
                        _imageBuilder(
                          "assets/logo_1.png",
                          screenWidth,
                          screenHeight,
                        ),
                        _imageBuilder(
                          "assets/logo_1.png",
                          screenWidth,
                          screenHeight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageBuilder(String imagePath, double imgWidth, double imgHeight) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          height: double.infinity,
          width: imgWidth * 0.5,
        ),
      ),
    );
  }
}
