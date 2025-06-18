import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HPNews extends StatelessWidget {
  const HPNews({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.35,
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
                            "Heat Index Report!",
                            "https://www.facebook.com/photo?fbid=1230779445078273&set=a.401894541300105",
                            context),
                        _imageBuilder(
                            "Hiring Alert!",
                            "https://www.facebook.com/photo?fbid=1230053788484172&set=pcb.1230054545150763",
                            context),
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

  Widget _imageBuilder(String NewsTitle, String Link, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {
          final String link = Link;
          final Uri url = Uri.parse(link);

          launchUrl(url);
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: SizedBox(
          width: screenWidth * 0.85,
          height: screenHeight * 0.25,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Center(
                  child: Text(
                    NewsTitle,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "CenturyGothic",
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      "assets/brk_1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
