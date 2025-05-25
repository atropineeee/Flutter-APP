import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HPSocials extends StatelessWidget {
  const HPSocials({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight *
          0.25, // Set this to 0.4 to use the Old Emergency Hotline
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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.025),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.035,
                child: Text(
                  "Social Media",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "CenturyGothic",
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final String link =
                            "https://www.facebook.com/malapitan.along";
                        final Uri url = Uri.parse(link);

                        launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(screenHeight * 0.01),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.05,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                "assets/icons/fb.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CenturyGothic",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        final String link =
                            "https://www.tiktok.com/@alongmalapitan";
                        final Uri url = Uri.parse(link);

                        launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(screenHeight * 0.01),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.05,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.asset(
                                "assets/icons/ttk.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "TikTok",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CenturyGothic",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.005),
              SizedBox(
                height: screenHeight * 0.035,
                child: Text(
                  "Website",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "CenturyGothic",
                  ),
                ),
              ),
              _buildWebsiteLink("https://caloocancity.gov.ph/",
                  "assets/logo_1.png", "Caloocan Website", context),
              SizedBox(height: screenHeight * 0.015),

              // This Commented Part Was from the old Emergency Hotline
              // SizedBox(
              //   height: screenHeight * 0.3,
              //   child: Column(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           width: double.infinity,
              //           decoration: BoxDecoration(
              //             color: Color.fromARGB(150, 200, 200, 200),
              //             borderRadius: BorderRadius.circular(15),
              //           ),
              //           child: SingleChildScrollView(
              //             child: Column(
              //               children: [
              //                 SizedBox(height: screenHeight * 0.005),
              //                 SizedBox(
              //                   height: screenHeight * 0.035,
              //                   child: Text(
              //                     "Hotlines",
              //                     style: TextStyle(
              //                       fontSize: 25,
              //                       fontWeight: FontWeight.bold,
              //                       fontFamily: "CenturyGothic",
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.all(screenWidth * 0.025),
              //                   child: Column(
              //                     children: [
              //                       _buildEmergencyText(
              //                           "DRRMO Emergency Hotline\nTel No: 5-310-69-72\nContact No: 09167976365",
              //                           context),
              //                       SizedBox(height: screenHeight * 0.015),
              //                       _buildEmergencyText(
              //                           "DRRMO Operation Center\nTel No: (02) 888 - 25664",
              //                           context),
              //                       SizedBox(height: screenHeight * 0.015),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildEmergencyText(String text, BuildContext context) {
  //   //double screenHeight = MediaQuery.of(context).size.height;
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: Center(
  //           child: Text(
  //             text,
  //             style: TextStyle(
  //               fontSize: 20,
  //               fontWeight: FontWeight.bold,
  //               fontFamily: "CenturyGothic",
  //             ),
  //             textAlign: TextAlign.center,
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget _buildWebsiteLink(
      String linked, String logo, String text, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              final String link = linked;
              final Uri url = Uri.parse(link);
              launchUrl(url);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(screenHeight * 0.01),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
