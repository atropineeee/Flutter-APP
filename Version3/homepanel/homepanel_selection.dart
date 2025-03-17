import 'package:flutter/material.dart';

class HPSelection extends StatelessWidget {
  const HPSelection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.35, // Fixed container height
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
                    _buildButton("Button 1", Icons.note_alt, context),
                    _buildButton("Button 2", Icons.note_alt, context),
                    _buildButton("Button 3", Icons.note_alt, context),
                    _buildButton("Button 4", Icons.note_alt, context),
                    _buildButton("Button 5", Icons.note_alt, context),
                    _buildButton("Button 6", Icons.note_alt, context),
                    _buildButton("Button 7", Icons.note_alt, context),
                    _buildButton("Button 8", Icons.note_alt, context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, IconData icon, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          child: Container(
            height: screenHeight * 0.06,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Icon(
              icon,
              size: screenHeight * 0.035,
              color: Colors.blueAccent,
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
}
