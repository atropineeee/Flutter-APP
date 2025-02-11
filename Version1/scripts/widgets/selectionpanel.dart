import 'package:flutter/material.dart';

class SelectionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.5,
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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/logo_3.png",
                    width: MediaQuery.of(context).size.width * 0.90,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(1),
                child: Wrap(
                  spacing: 25,
                  runSpacing: 12,
                  alignment: WrapAlignment.start,
                  children: List.generate(5, (index) => _buildButton(index)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            print("Button ${index + 1} clicked");
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Icon(
              Icons.note_alt,
              size: 32,
              color: Colors.blueAccent,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Button ${index + 1}",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
