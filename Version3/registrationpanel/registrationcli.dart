import 'package:supabase_flutter/supabase_flutter.dart';

class RegistrationCli {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<String> registerUser({
    required String u_fname,
    required String u_lname,
    required String u_mname,
    required String u_addrs,
    required String u_cntnm,
    required String u_bdate,
    required String u_ntnly,
    required String u_emlad,
    required String u_passw,
  }) async {
    try {
      await supabase.from('users').insert({
        'first_name': u_fname,
        'last_name': u_lname,
        'middle_name': u_mname,
        'address': u_addrs,
        'contact_number': u_cntnm,
        'email': u_emlad,
        'password': u_passw,
        'nationality': u_ntnly,
        'birthdate': u_bdate,
        'verified': "false",
      });

      return "Registered";
    } catch (e) {
      return "Error: $e";
    }
  }
}
