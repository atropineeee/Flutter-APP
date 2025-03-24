import 'package:supabase_flutter/supabase_flutter.dart';

class LoginCli {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<String?> loginUser(String email, String password) async {
    try {
      final response = await supabase
          .from('users')
          .select('password')
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

      return null;
    } catch (e) {
      return "Something went wrong. Try again."; // General error
    }
  }
}
