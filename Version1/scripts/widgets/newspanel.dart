import 'package:flutter/material.dart';

class NewsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.265,
        width: double.infinity,
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
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildImage("assets/logo_1.png"),
                  _buildImage("assets/logo_1.png"),
                  _buildImage("assets/logo_1.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          height: double.infinity,
          width: 200,
        ),
      ),
    );
  }
}
