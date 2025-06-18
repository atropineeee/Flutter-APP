import 'package:cityhallappcal/profilepanel/profilepanel_details/profilepanel_fulldetails.dart';
import 'package:cityhallappcal/profilepanel/profilepanel_details/profilepanel_id.dart';
import 'package:cityhallappcal/profilepanel/profilepanel_profile.dart';
import 'package:flutter/material.dart';

class PPDetails extends StatelessWidget {
  const PPDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PPProfile(),
          PPFullDetails(),
          PPVirtualID(),
        ],
      ),
    );
  }
}
