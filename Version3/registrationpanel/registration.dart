import 'package:cityhallappcal/loginpanel/loginpage.dart';
import 'package:cityhallappcal/registrationpanel/registrationcli.dart';
import 'package:cityhallappcal/registrationpanel/registrationval.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  RegistrationPageUI createState() => RegistrationPageUI();
}

class RegistrationPageUI extends State<RegistrationPage> {
  final RegistrationCli _registrationCli = RegistrationCli();

  final TextEditingController fnameInpt = TextEditingController();
  final TextEditingController mnameInpt = TextEditingController();
  final TextEditingController lnameInpt = TextEditingController();
  final TextEditingController bdaytInpt = TextEditingController();
  final TextEditingController addrsInpt = TextEditingController();
  final TextEditingController cntnmInpt = TextEditingController();
  final TextEditingController emladInpt = TextEditingController();
  final TextEditingController pswdsInpt = TextEditingController();
  String prefixSelected = "N/A";
  String nationalitySelected = "N/A";
  List<String> prefix = ['Jr.', 'Sr.', 'II', 'III', 'IV', 'V', "N/A"];
  List<String> nationalities = [
    "N/A",
    "Afghan",
    "Albanian",
    "Algerian",
    "American",
    "Andorran",
    "Angolan",
    "Argentine",
    "Armenian",
    "Australian",
    "Austrian",
    "Azerbaijani",
    "Bahamian",
    "Bahraini",
    "Bangladeshi",
    "Barbadian",
    "Belarusian",
    "Belgian",
    "Belizean",
    "Beninese",
    "Bhutanese",
    "Bolivian",
    "Bosnian",
    "Botswanan",
    "Brazilian",
    "British",
    "Bruneian",
    "Bulgarian",
    "Burkinabe",
    "Burmese",
    "Burundian",
    "Cambodian",
    "Cameroonian",
    "Canadian",
    "Cape Verdean",
    "Chadian",
    "Chilean",
    "Chinese",
    "Colombian",
    "Comoran",
    "Congolese",
    "Costa Rican",
    "Croatian",
    "Cuban",
    "Cypriot",
    "Czech",
    "Danish",
    "Djiboutian",
    "Dominican",
    "Dutch",
    "Ecuadorean",
    "Egyptian",
    "Emirati",
    "English",
    "Eritrean",
    "Estonian",
    "Eswatini",
    "Ethiopian",
    "Fijian",
    "Filipino",
    "Finnish",
    "French",
    "Gabonese",
    "Gambian",
    "Georgian",
    "German",
    "Ghanaian",
    "Greek",
    "Grenadian",
    "Guatemalan",
    "Guinean",
    "Guyanese",
    "Haitian",
    "Honduran",
    "Hungarian",
    "Icelandic",
    "Indian",
    "Indonesian",
    "Iranian",
    "Iraqi",
    "Irish",
    "Israeli",
    "Italian",
    "Ivorian",
    "Jamaican",
    "Japanese",
    "Jordanian",
    "Kazakh",
    "Kenyan",
    "Kiribati",
    "Korean",
    "Kosovan",
    "Kuwaiti",
    "Kyrgyz",
    "Lao",
    "Latvian",
    "Lebanese",
    "Liberian",
    "Libyan",
    "Liechtensteiner",
    "Lithuanian",
    "Luxembourger",
    "Malagasy",
    "Malawian",
    "Malaysian",
    "Maldivian",
    "Malian",
    "Maltese",
    "Marshallese",
    "Mauritanian",
    "Mauritian",
    "Mexican",
    "Micronesian",
    "Moldovan",
    "Monacan",
    "Mongolian",
    "Montenegrin",
    "Moroccan",
    "Mozambican",
    "Macedonian",
    "Namibian",
    "Nauruan",
    "Nepalese",
    "New Zealander",
    "Nicaraguan",
    "Nigerien",
    "Nigerian",
    "Norwegian",
    "Omani",
    "Pakistani",
    "Palauan",
    "Palestinian",
    "Panamanian",
    "Papuan",
    "Paraguayan",
    "Peruvian",
    "Polish",
    "Portuguese",
    "Qatari",
    "Romanian",
    "Russian",
    "Rwandan",
    "Saint Lucian",
    "Salvadoran",
    "Samoan",
    "San Marinese",
    "Sao Tomean",
    "Saudi",
    "Scottish",
    "Senegalese",
    "Serbian",
    "Seychellois",
    "Sierra Leonean",
    "Singaporean",
    "Slovak",
    "Slovenian",
    "Somali",
    "Spanish",
    "Sri Lankan",
    "Sudanese",
    "Surinamese",
    "Swazi",
    "Swedish",
    "Swiss",
    "Syrian",
    "Taiwanese",
    "Tajik",
    "Tanzanian",
    "Thai",
    "Togolese",
    "Tongan",
    "Trinidadian",
    "Tunisian",
    "Turkish",
    "Turkmen",
    "Tuvaluan",
    "Ugandan",
    "Ukrainian",
    "Uruguayan",
    "Uzbek",
    "Vanuatuan",
    "Venezuelan",
    "Vietnamese",
    "Welsh",
    "Yemeni",
    "Zambian",
    "Zimbabwean"
  ];

  String? _errorMessage = "";

  Future<void> _registerUser() async {
    String? nameError =
        Registrationval.validateName(fnameInpt.text, "First Name") ??
            Registrationval.validateName2(mnameInpt.text, "Middle Name") ??
            Registrationval.validateName(lnameInpt.text, "Last Name");

    if (nameError != null) {
      _showError(nameError);
      return;
    }

    String? addressError = Registrationval.validateAddress(addrsInpt.text);
    if (addressError != null) {
      _showError(addressError);
      return;
    }

    String? contactError = Registrationval.validateContact(cntnmInpt.text);
    if (contactError != null) {
      _showError(contactError);
      return;
    }

    String? nationalityError =
        Registrationval.validateNationality(nationalitySelected);

    if (nationalityError != null) {
      _showError(nationalityError);
      return;
    }

    String? birthdateError = Registrationval.validateBirthdate(bdaytInpt.text);
    if (birthdateError != null) {
      _showError(birthdateError);
      return;
    }

    String? emailError = Registrationval.validateEmail(emladInpt.text);
    if (emailError != null) {
      _showError(emailError);
      return;
    }

    String? passwordError = Registrationval.validatePassword(pswdsInpt.text);
    if (passwordError != null) {
      _showError(passwordError);
      return;
    }

    bool emailExists =
        await Registrationval.checkIfEmailExist(emladInpt.text.trim());

    if (emailExists) {
      _showError("Email is already registered");
      return;
    }

    bool contactExists =
        await Registrationval.checkIfContactExist(cntnmInpt.text.trim());

    if (contactExists) {
      _showError("Contact number is already registered");
      return;
    }

    String message = await _registrationCli.registerUser(
      u_fname: fnameInpt.text.trim(),
      u_lname: lnameInpt.text.trim(),
      u_mname: mnameInpt.text.trim(),
      u_suffx: prefixSelected.trim(),
      u_addrs: addrsInpt.text.trim(),
      u_cntnm: cntnmInpt.text.trim(),
      u_ntnly: nationalitySelected.trim(),
      u_bdate: bdaytInpt.text.trim(),
      u_emlad: emladInpt.text.trim(),
      u_passw: pswdsInpt.text.trim(),
    );

    if (message == "Registered") {
      fnameInpt.clear();
      mnameInpt.clear();
      lnameInpt.clear();
      addrsInpt.clear();
      cntnmInpt.clear();

      bdaytInpt.clear();
      emladInpt.clear();
      pswdsInpt.clear();
    }

    _showError(message);
  }

  void _showError(String message) {
    setState(() {
      _errorMessage = message;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _errorMessage = "";
      });
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
                child: SingleChildScrollView(
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(200, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(100, 0, 0, 0),
                          blurRadius: 5,
                          offset: Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.02,
                        vertical: screenHeight * 0.025,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.01,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Register",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "CenturyGothic",
                                    ),
                                  ),
                                  if (_errorMessage != null)
                                    Text(
                                      _errorMessage!,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "CenturyGothic",
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs("First Name", context, fnameInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs("Middle Name", context, mnameInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs("Last Name", context, lnameInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildDropDown(context),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs(
                                "Address (Full Address)", context, addrsInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs(
                                "Contact Number (09****)", context, cntnmInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildDropDown2(context),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs(
                                "Birthdate (mm/dd/yyyy)", context, bdaytInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildInputs("Email Address", context, emladInpt),
                            SizedBox(height: screenHeight * 0.0125),
                            _buildHideInputs("Password", context, pswdsInpt),
                            SizedBox(height: screenHeight * 0.025),
                            _buildButton(context),
                            SizedBox(height: screenHeight * 0.025),
                            InkWell(
                              onTap: () {
                                // Sign In Function Here
                                LoginFunctions.swapToMenu(context);
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Color.fromARGB(200, 0, 0, 0),
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
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
    );
  }

  Widget _buildInputs(
      String hintName, BuildContext context, TextEditingController controller) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.825,
      height: screenHeight * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(100, 0, 0, 0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: SizedBox(
        child: TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintName,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              fontFamily: "CenturyGothic",
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropDown(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.825,
      height: screenHeight * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(100, 0, 0, 0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: prefixSelected,
          hint: Text(
            "Suffix",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              fontFamily: "CenturyGothic",
            ),
          ),
          icon: Icon(Icons.arrow_drop_down),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: "CenturyGothic",
            color: Colors.grey,
          ),
          onChanged: (String? newValue) {
            setState(() {
              prefixSelected = newValue!;
            });
          },
          items: prefix.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "CenturyGothic",
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildDropDown2(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.825,
      height: screenHeight * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(100, 0, 0, 0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: nationalitySelected,
          hint: Text(
            "Nationality",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              fontFamily: "CenturyGothic",
            ),
          ),
          icon: Icon(Icons.arrow_drop_down),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: "CenturyGothic",
            color: Colors.grey,
          ),
          onChanged: (String? newValue2) {
            setState(() {
              nationalitySelected = newValue2!;
            });
          },
          items: nationalities.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "CenturyGothic",
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildHideInputs(
      String hintName, BuildContext context, TextEditingController controller) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.825,
      height: screenHeight * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromARGB(100, 0, 0, 0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: SizedBox(
        child: TextField(
          obscureText: true,
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintName,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              fontFamily: "CenturyGothic",
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth * 0.50,
      height: screenHeight * 0.045,
      child: ElevatedButton(
        onPressed: () {
          _registerUser();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Color.fromARGB(100, 0, 0, 0),
          elevation: 5,
        ),
        child: const Text(
          "Register",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "CenturyGothic",
          ),
        ),
      ),
    );
  }
}

class LoginFunctions {
  static void swapToMenu(BuildContext context) async {
    await Future.delayed(const Duration(microseconds: 100));

    if (!context.mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
