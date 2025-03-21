import 'dart:async';
import 'package:cityhallappcal/loginpanel/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: "https://tmvlhxqoelkmmgxbnfsw.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRtdmxoeHFvZWxrbW1neGJuZnN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDIzODMwNjIsImV4cCI6MjA1Nzk1OTA2Mn0.bd_7OhN0ss6o-EvKrgYso1oiNXdBmgxKTI0fHBbwUoo");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  LoadingScreenUI createState() => LoadingScreenUI();
}

class LoadingScreenUI extends State<LoadingScreen> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  void startLoading() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (!mounted) return;
      setState(() {
        _progress += 0.05;
      });

      if (_progress >= 1.0) {
        timer.cancel();
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 175, 5),
            Color.fromARGB(255, 190, 170, 5),
            Color.fromARGB(255, 65, 140, 5)
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_1.png',
              width: screenWidth * 0.50,
              height: screenHeight * 0.30,
            ),
            SizedBox(
              width: screenWidth * 0.55,
              child: LinearProgressIndicator(
                value: _progress,
                backgroundColor:
                    Color.fromARGB((0.3 * 255).toInt(), 255, 255, 255),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${(_progress * 100).toInt()}%",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
