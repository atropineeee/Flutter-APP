import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

Future<void> saveCredentials(String email, String password) async {
  await storage.write(key: 'email', value: email);
  await storage.write(key: 'password', value: password);
}

Future<Map<String, String?>> getCredentials() async {
  String? email = await storage.read(key: 'email');
  String? password = await storage.read(key: 'password');
  return {'email': email, 'password': password};
}
