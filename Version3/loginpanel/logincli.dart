import 'package:cityhallappcal/savecredentials/currentactiveuser.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginCli {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<String?> loginUser(String email, String password) async {
    try {
      final response = await supabase
          .from('users')
          .select(
              'password, first_name, middle_name, last_name, address, contact_number')
          .eq('email', email)
          .limit(1)
          .maybeSingle();

      if (response == null) {
        return "Email does not exist.";
      }

      String storedPassword = response['password'];

      if (storedPassword != password) {
        return "Incorrect password.";
      }

      CurrentActiveUser.setUser(
        userEmail: email,
        userFirstName: response['first_name'],
        userLastName: response['last_name'],
        userMiddleName: response['middle_name'],
        userAddress: response['address'],
        userContact: response['contact_number'],
      );

      return null;
    } catch (e) {
      return "Something went wrong. Try again.";
    }
  }
}
