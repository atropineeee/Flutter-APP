import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:flutter/material.dart';

class PPVirtualID extends StatelessWidget {
  const PPVirtualID({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.015),
      child: SizedBox(
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/vid.png"),
              Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.000),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        "<ID NUMBER HERE>",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "CenturyGothic",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.000),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        "<DATE ISSUED>",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "CenturyGothic",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.005),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            screenHeight * 0.0015),
                                        child: SizedBox(
                                          child: Image.asset(
                                            "assets/person.png",
                                            width: screenWidth * 0.20,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${CurrentActiveUser.firstname ?? ''} "
                                                  "${(CurrentActiveUser.middlename?.isNotEmpty ?? false) ? '${CurrentActiveUser.middlename![0]}. ' : ''}"
                                                  "${CurrentActiveUser.lastname ?? ''}"
                                              .trim(),
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.040,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "CenturyGothic",
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.005),
                              child: Align(
                                alignment: Alignment.bottomRight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Mayor's Signature <SWAP TO PNG>",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "CenturyGothic",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.01),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "DALE GONZALO \"ALONG\" MALAPITAN",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.03,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "CenturyGothic",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "CITY MAYOR",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.02,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
