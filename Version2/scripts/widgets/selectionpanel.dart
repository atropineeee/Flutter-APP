import 'package:flutter/material.dart';
import 'dart:developer';

class SelectionPanel extends StatelessWidget {
  const SelectionPanel({super.key});

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
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    "assets/logo_3.png",
                    width: MediaQuery.of(context).size.width * 0.90,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double buttonWidth =
                          (constraints.maxWidth - (4 * 16)) / 4;

                      return Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.start,
                        children: List.generate(
                          8,
                          (index) => SizedBox(
                            width: buttonWidth,
                            child: _buildButton(index, constraints),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(int index, BoxConstraints constraints) {
    double buttonSize = constraints.maxWidth * 0.15;

    return SizedBox(
      width: buttonSize,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              log("Button ${index + 1} clicked!");
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.zero,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            child: Container(
              height: buttonSize,
              width: buttonSize,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Icon(
                Icons.note_alt,
                size: buttonSize * 0.5,
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
      ),
    );
  }
}
