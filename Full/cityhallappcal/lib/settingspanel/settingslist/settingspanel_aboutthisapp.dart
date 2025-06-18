import 'package:flutter/material.dart';

class SPPAboutThisApp extends StatefulWidget {
  const SPPAboutThisApp({super.key});

  @override
  State<SPPAboutThisApp> createState() => _SPPAboutThisApp();
}

class _SPPAboutThisApp extends State<SPPAboutThisApp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 175, 5),
              Color.fromARGB(255, 190, 170, 5),
              Color.fromARGB(255, 65, 140, 5),
            ],
          ),
        ),
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.015),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.025),
                  Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.95,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: screenHeight * 0),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.040,
                            child: Center(
                              child: Text(
                                "About this App",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.055,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CenturyGothic",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Add More Contents Below Here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
