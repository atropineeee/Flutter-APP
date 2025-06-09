import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:cityhallappcal/savecredentials/savecredentials.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SPPDetails extends StatefulWidget {
  const SPPDetails({super.key});

  @override
  State<SPPDetails> createState() => _SPPDetailsState();
}

class _SPPDetailsState extends State<SPPDetails> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();

  String selectedValue = "N/A";
  List<String> items = ['Jr.', 'Sr.', 'II', 'III', 'IV', 'V', "N/A"];

  String txt1 = "";
  String txt2 = "";

  void initState() {
    String firstName = CurrentActiveUser.firstname.toString();
    String lastName = CurrentActiveUser.lastname.toString();
    String middleName = CurrentActiveUser.middlename.toString();
    String suffix = CurrentActiveUser.suffix.toString();
    String email = CurrentActiveUser.email.toString();
    String contact = CurrentActiveUser.contactnumber.toString();

    selectedValue = suffix;

    txt1 = (firstName + " " + middleName + " " + lastName);
    txt2 = (contact);

    _controller1.text = firstName.toString();
    _controller2.text = lastName.toString();
    _controller3.text = middleName.toString();
    _controller5.text = contact.toString();
    _controller6.text = email.toString();
  }

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
                              vertical: screenHeight * 0.000),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.040,
                            child: Center(
                              child: Text(
                                "Personal Details",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.060,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CenturyGothic",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.000),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.10,
                            child: Center(
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: screenHeight * 0.000),
                                      child: SizedBox(
                                        width: screenWidth * 0.86,
                                        height: screenHeight * 0.040,
                                        child: Center(
                                          child: Text(
                                            txt1,
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.05,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "CenturyGothic",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: screenHeight * 0.000),
                                      child: SizedBox(
                                        width: screenWidth * 0.86,
                                        height: screenHeight * 0.040,
                                        child: Center(
                                          child: Text(
                                            txt2,
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "CenturyGothic",
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.000),
                          child: SizedBox(
                            width: screenWidth * 0.86,
                            height: screenHeight * 0.040,
                            child: Center(
                              child: Text(
                                "Edit Personal Details",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.06,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CenturyGothic",
                                  color: Colors.black,
                                ),
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
                              controller: _controller1,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: "CenturyGothic",
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
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
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: "CenturyGothic",
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
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
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: "CenturyGothic",
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.005),
                          child: SizedBox(
                            width: screenWidth * 0.805,
                            height: screenHeight * 0.060,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: selectedValue,
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                style: TextStyle(
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CenturyGothic",
                                  color: Colors.black,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontFamily: "CenturyGothic",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          height: 1.0,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
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
                              controller: _controller5,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: "CenturyGothic",
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
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
                              controller: _controller6,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: "CenturyGothic",
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
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
                                ChangePersonalDetailsFunctions.verifyEach(
                                    context,
                                    _controller1.text,
                                    _controller2.text,
                                    _controller3.text,
                                    selectedValue,
                                    _controller5.text,
                                    _controller6.text);
                              },
                              child: Container(
                                width: screenWidth * 0.86,
                                height: screenHeight * 0.050,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.035),
                                  child: const Text(
                                    "Edit Details",
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
    );
  }
}

class ChangePersonalDetailsFunctions {
  static Future<void> verifyEach(
    BuildContext context,
    String firstName,
    String lastName,
    String middleName,
    String suffix,
    String contactNumber,
    String email,
  ) async {
    final RegExp nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    final RegExp numberRegex = RegExp(r'^\d+$');
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!nameRegex.hasMatch(firstName)) {
      showQuickMessage(context, "First name must contain only letters.");
      return;
    }

    if (!nameRegex.hasMatch(lastName)) {
      showQuickMessage(context, "Last name must contain only letters.");
      return;
    }

    if (!nameRegex.hasMatch(middleName)) {
      showQuickMessage(context, "Middle name must contain only letters.");
      return;
    }

    if (!numberRegex.hasMatch(contactNumber)) {
      showQuickMessage(context, "Contact number must contain only digits.");
      return;
    }

    if (!emailRegex.hasMatch(email)) {
      showQuickMessage(context, "Please enter a valid email address.");
      return;
    }

    try {
      await Supabase.instance.client.from('users').update({
        'first_name': firstName,
        'last_name': lastName,
        'middle_name': middleName,
        'contact_number': contactNumber,
        'email': email,
        'suffix': suffix,
      }).eq('email', CurrentActiveUser.email.toString());

      showQuickMessage(context, "Password updated successfully!");
      CurrentActiveUser.firstname = firstName.toString();
      CurrentActiveUser.lastname = lastName.toString();
      CurrentActiveUser.middlename = middleName.toString();
      CurrentActiveUser.suffix = suffix.toString();
      CurrentActiveUser.contactnumber = contactNumber.toString();
      CurrentActiveUser.email = email.toString();

      saveCredentials(email, CurrentActiveUser.password.toString());
      Navigator.pop(context);
    } catch (error) {
      showQuickMessage(context, "Failed to update Details: $error",
          success: false);
    }
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
