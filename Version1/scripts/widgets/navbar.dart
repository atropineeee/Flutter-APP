import 'package:flutter/material.dart';

class Navbars extends StatefulWidget {
  final Function(String) onItemSelected;

  const Navbars({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbars> {
  String selectedButton = "Home";

  void _onTap(String buttonID) {
    setState(() {
      selectedButton = buttonID;
    });
    widget.onItemSelected(buttonID);
  }

  Color _getIconColor(String buttonID) {
    return selectedButton == buttonID ? Colors.blueAccent : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem("Home", Icons.home),
          _buildNavItem("News", Icons.newspaper),
          _buildQRButton(),
          _buildNavItem("Account", Icons.person),
          _buildNavItem("Settings", Icons.settings),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, IconData icon) {
    return Expanded(
      child: InkWell(
        onTap: () => _onTap(label),
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 30, color: _getIconColor(label)),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQRButton() {
    return Expanded(
      child: OverflowBox(
        maxHeight: MediaQuery.of(context).size.height * 0.12,
        child: Transform.translate(
          offset: Offset(0, -20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.070,
                width: MediaQuery.of(context).size.height * 0.070,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selectedButton == "QR"
                        ? Colors.blueAccent
                        : Colors.blueAccent,
                    width: 3.0,
                  ),
                ),
                child: Icon(
                  Icons.qr_code,
                  size: 35,
                  color: selectedButton == "QR"
                      ? Colors.blueAccent
                      : Colors.blueAccent,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "QR",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
