import 'package:cityhallapp/scripts/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const LoginPanel());
}

class LoginPanel extends StatelessWidget {
  const LoginPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 255, 175, 5),
              Color.fromARGB(255, 190, 170, 5),
              Color.fromARGB(255, 65, 140, 5)
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo_1.png',
                    width: 60,
                    height: 60,
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/logo_2.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Center(
              child: Container(
                width: 360,
                height: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(100, 0, 0, 0),
                        blurRadius: 5,
                        offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        child: Container(
                          width: 300,
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(100, 0, 0, 0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    blurRadius: 5,
                                    offset: Offset(5, 5))
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Email",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: Container(
                          width: 300,
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(100, 0, 0, 0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    blurRadius: 5,
                                    offset: Offset(5, 5))
                              ]),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(0, 0, 0, 0),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(100, 0, 0, 0),
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              LoginFunctions.swapToMenu(
                                  context); // Function Here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                print("Forgot Password");
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                print("Sign Up");
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Color.fromARGB(100, 0, 0, 0),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}

class LoginFunctions {
  static void swapToMenu(BuildContext context) {
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePanel()),
      );
    });
  }
}
