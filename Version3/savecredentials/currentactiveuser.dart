class CurrentActiveUser {
  static String? email;
  static String? firstname;
  static String? lastname;
  static String? middlename;
  static String? address;
  static String? contactnumber;

  static void setUser({
    required String userEmail,
    required String userFirstName,
    required String userLastName,
    required String userMiddleName,
    required String userAddress,
    required String userContact,
  }) {
    email = userEmail;
    firstname = userFirstName;
    lastname = userLastName;
    middlename = userMiddleName;
    address = userAddress;
    contactnumber = userContact;
  }
}
