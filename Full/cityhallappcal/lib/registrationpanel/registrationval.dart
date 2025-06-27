import 'package:supabase_flutter/supabase_flutter.dart';

class Registrationval {
  // First Middle and Last Name Validation
  static String? validateName(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return "$fieldName is required.";
    }

    if (value.length < 4) {
      return "$fieldName must be at least 4 characters long.";
    }

    final regex = RegExp(r'^[a-zA-Z\s]+$');
    if (!regex.hasMatch(value)) {
      return "$fieldName cannot contain any number or symbols.";
    }
    return null;
  }

  // Middle Name Validation
  static String? validateName2(String value, String fieldName) {
    if (value.trim().isEmpty) {
      if (value.trim().isEmpty) {
        return "$fieldName is required.";
      }

      if (value.length < 4) {
        return "$fieldName must be at least 4 characters long.";
      }

      final regex = RegExp(r'^[a-zA-Z\s]+$');
      if (!regex.hasMatch(value)) {
        return "$fieldName cannot contain any number or symbols.";
      }

      return "$fieldName is required.";
    }

    return null;
  }

  // Address Validation
  static String? validateAddress(String value) {
    if (value.length < 12) {
      return "Enter a valid Address";
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

  static String? validateNationality(String value) {
    if (value.trim() == "N/A") {
      return "Select your Nationality";
    }

    return null;
  }

  // Birthdate Validation
  static String? validateBirthdate(String value) {
    if (value.trim().isEmpty) {
      return "Birthdate is required.";
    }

    final RegExp dateRegex =
        RegExp(r"^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/((19|20)\d{2})$");

    if (!dateRegex.hasMatch(value.trim())) {
      return "Birthdate format should be MM/DD/YYYY.";
    }

    try {
      // Parse the date
      final parts = value.split('/');
      final month = int.parse(parts[0]);
      final day = int.parse(parts[1]);
      final year = int.parse(parts[2]);

      final birthdate = DateTime(year, month, day);
      final now = DateTime.now();

      if (birthdate.month != month || birthdate.day != day) {
        return "Birthdate is not a valid calendar date.";
      }

      if (birthdate.isAfter(now)) {
        return "Birthdate cannot be in the future.";
      }
    } catch (e) {
      return "Birthdate is invalid.";
    }

    return null;
  }

  // Email Validation
  static String? validateEmail(String value) {
    value = value.trim();

    if (value.isEmpty) {
      return "Email is required.";
    }

    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return "Enter a valid email address.";
    }

    final username = value.split('@');

    if (username[0].length < 4) {
      return "Email username must be at least 4 characters long.";
    }

    if (!RegExp(r"^[a-zA-Z0-9._%+-]+$").hasMatch(username[0])) {
      return "Email username contains invalid characters.";
    }

    return null;
  }

  // Password Validation
  static String? validatePassword(String value) {
    if (value.trim().isEmpty) {
      return "Password is required.";
    }
    if (value.length < 12) {
      return "Password must be at least 12 characters long.";
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "Password must contain at least one lowercase letter.";
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain at least one uppercase letter.";
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return "Password must contain at least one number.";
    }

    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>\_\-\[\]=+;\`~]').hasMatch(value)) {
      return "Password must contain at least one special character.";
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
