import 'package:supabase_flutter/supabase_flutter.dart';

class Registrationval {
  // First Middle and Last Name Validation

  static String? validateName(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return "$fieldName is required.";
    }

    if (value.length < 2) {
      return "$fieldName must be at least 2 characters long.";
    }

    return null;
  }

  static String? validateName2(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return "$fieldName is required.";
    }

    return null;
  }

  // Email Validation
  static String? validateEmail(String value) {
    if (value.trim().isEmpty) {
      return "Email is required.";
    }

    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return "Enter a valid email address.";
    }
    return null;
  }

  // Contact Number Validation
  static String? validateContact(String value) {
    if (value.trim().isEmpty) {
      return "Contact Number is required.";
    }

    if (!RegExp(r"^09\d{9}$").hasMatch(value)) {
      return "Enter a valid Contact Number.";
    }
    return null;
  }

  // Password Validation
  static String? validatePassword(String value) {
    if (value.trim().isEmpty) {
      return "Password is required.";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters long.";
    }
    return null;
  }

  static String? validateBirthdate(String value) {
    if (value.trim().isEmpty) {
      return "Birthdate is required.";
    }
    final RegExp dateRegex = RegExp(
        r"^(0[1-9]|1[0-2])[-/](0[1-9]|[12][0-9]|3[01])[-/](19|20)\d{2}$");

    if (!dateRegex.hasMatch(value.trim())) {
      return "Birthdate format should be DD-MM-YYYY.";
    }
    return null;
  }

  static Future<bool> checkIfEmailExist(String value) async {
    final response = await Supabase.instance.client
        .from('users')
        .select('id')
        .eq('email', value)
        .maybeSingle();

    return response != null;
  }

  static Future<bool> checkIfContactExist(String value) async {
    final response = await Supabase.instance.client
        .from('users')
        .select('id')
        .eq('contact_number', value)
        .maybeSingle();

    return response != null;
  }
}
