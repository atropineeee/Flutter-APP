import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final String userName;
  final String contactNumber;
  final String profileImage;

  const UserInfoCard({
    super.key,
    required this.userName,
    required this.contactNumber,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 255, 255, 255),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(100, 0, 0, 0),
                blurRadius: 5,
                offset: Offset(5, 5))
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                profileImage,
                width: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      userName,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        "Contact: $contactNumber",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
