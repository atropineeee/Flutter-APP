import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HPSelection extends StatelessWidget {
  const HPSelection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.375,
      decoration: BoxDecoration(
        color: const Color.fromARGB(200, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: const Offset(5, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenHeight * 0.01),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                "assets/logo_3.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: screenWidth * 0.075, // Spacing between buttons
                  runSpacing: screenHeight * 0.015, // Spacing between rows
                  alignment: WrapAlignment.center,
                  children: [
                    _buildButton("GSIS", "assets/icons/gsis.png",
                        "https://webmsp.gsis.gov.ph/web-msp/login", context),
                    _buildButton(
                        "PhilHealth",
                        "assets/icons/phl.png",
                        "https://memberinquiry.philhealth.gov.ph/member/",
                        context),
                    _buildButton("SSS", "assets/icons/sss.png",
                        "https://www.sss.gov.ph/", context),
                    _buildButton("PWD", "assets/icons/pwd.png", "", context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      String label, String image, String link, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () async {
            final url = link;
            print('URL being launched: $url'); // For debugging
            _launchURL(url);
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          child: Container(
            height: screenHeight * 0.06,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              image,
              width: screenHeight * 0.035,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.005),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      // Launch the URL in an external browser or web view
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}
