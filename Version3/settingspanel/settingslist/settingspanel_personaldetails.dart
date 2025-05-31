import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:flutter/material.dart';
import 'package:cityhallappcal/savecredentials/savecredentials.dart';

class SPPDetails extends StatefulWidget {
  const SPPDetails({super.key});

  @override
  State<SPPDetails> createState() => _SPPDetailsState();
}

class _SPPDetailsState extends State<SPPDetails> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _obscureText3 = true;

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
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.005),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.060,
                            child: TextField(
                              controller: _controller1,
                              obscureText: _obscureText1,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter Old Password',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText1
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText1 = !_obscureText1;
                                    });
                                  },
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.005),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.060,
                            child: TextField(
                              controller: _controller2,
                              obscureText: _obscureText2,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter New Password',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText2
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText2 = !_obscureText2;
                                    });
                                  },
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.005),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.060,
                            child: TextField(
                              controller: _controller3,
                              obscureText: _obscureText3,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Confirm Password',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText3
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText3 = !_obscureText3;
                                    });
                                  },
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: screenHeight * 0),
                          child: Material(
                            color: const Color.fromARGB(255, 110, 200, 135),
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                ChangePasswordFunctions.verifyCurrentPassword(
                                    context,
                                    _controller1.text,
                                    _controller2.text,
                                    _controller3.text);
                              },
                              child: Container(
                                width: screenWidth * 0.86,
                                height: screenHeight * 0.050,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.035),
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "CenturyGothic",
                                    ),
                                  ),
                                ),
                              ),
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
      backgroundColor: Colors.black,
    );
  }
}

class ChangePasswordFunctions {
  static void verifyCurrentPassword(BuildContext context, String oldPassword,
      String newPassword, String confirmPassword) {
    if ((oldPassword?.isEmpty ?? true) ||
        (newPassword?.isEmpty ?? true) ||
        (confirmPassword?.isEmpty ?? true)) {
      return;
    }

    if (oldPassword != CurrentActiveUser.password) {
      showQuickMessage(context, "Current password is incorrect.");
      return;
    }

    if (newPassword != confirmPassword) {
      showQuickMessage(context, "New password and confirmation do not match.");
      return;
    }

    if (oldPassword == confirmPassword) {
      showQuickMessage(context, "New Password cannot be the Old Password.");
      return;
    }

    showQuickMessage(context, "Password changed successfully!");
  }

  static void showQuickMessage(BuildContext context, String message,
      {bool success = true}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
