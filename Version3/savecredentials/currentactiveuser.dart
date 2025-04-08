class CurrentActiveUser {
  static String? email;
  static String? firstname;
  static String? lastname;
  static String? middlename;
  static String? address;
  static String? contactnumber;

  static String? password;
  static String? nationality;
  static String? birthdate;
  static String? verified;

  static void setUser({
    required String userEmail,
    required String userFirstName,
    required String userLastName,
    required String userMiddleName,
    required String userAddress,
    required String userContact,
    required String userPassword,
    required String userNationality,
    required String userBirthdate,
    required String userVerified,
  }) {
    email = userEmail;
    firstname = userFirstName;
    lastname = userLastName;
    middlename = userMiddleName;
    address = userAddress;
    contactnumber = userContact;
    password = userPassword;
    nationality = userNationality;
    birthdate = userBirthdate;
    verified = userVerified;
  }
}
