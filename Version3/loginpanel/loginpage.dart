import 'package:cityhallappcal/homepage.dart';
import 'package:cityhallappcal/registrationpanel/registration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageUI createState() => LoginPageUI();
}

class LoginPageUI extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 175, 5),
              Color.fromARGB(255, 190, 170, 5),
              Color.fromARGB(255, 65, 140, 5)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: screenHeight * 0.025),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/logo_1.png",
                    width: screenWidth * 0.2,
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/logo_2.png",
                    width: screenWidth * 0.2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(100, 0, 0, 0),
                          blurRadius: 5,
                          offset: Offset(5, 5)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      vertical: screenHeight * 0.03,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.02,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.025),

                        Container(
                          width: screenWidth * 0.70,
                          height: screenHeight * 0.06,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(100, 0, 0, 0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(100, 0, 0, 0),
                                blurRadius: 5,
                                offset: const Offset(5, 5),
                              )
                            ],
                          ),
                          child: SizedBox(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.025),

                        // Password Input Field
                        Container(
                          width: screenWidth * 0.70,
                          height: screenHeight * 0.06,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(100, 0, 0, 0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(100, 0, 0, 0),
                                blurRadius: 5,
                                offset: const Offset(5, 5),
                              )
                            ],
                          ),
                          child: SizedBox(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.025),

                        // Login Button
                        SizedBox(
                          width: screenWidth * 0.50,
                          height: screenHeight * 0.045,
                          child: ElevatedButton(
                            onPressed: () {
                              LoginFunctions.swapToMenu(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shadowColor: const Color.fromARGB(100, 0, 0, 0),
                              elevation: 5,
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.025),

                        // Forgot Password & Sign Up
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Forgot Password Function Here
                                },
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  // Sign Up Function Here
                                  RegistrationFunctions.swapToMenu(context);
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
}

class LoginFunctions {
  static void swapToMenu(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!context.mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }
}

class RegistrationFunctions {
  static void swapToMenu(BuildContext context) async {
    await Future.delayed(const Duration(microseconds: 100));

    if (!context.mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage()),
    );
  }
}
