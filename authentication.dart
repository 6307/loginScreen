import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

Future<bool> checkUserLoginStatus() async {
  String? token = await storage.read(key: 'auth_token');
  return token != null;
}

Future<void> loginUser(BuildContext context, String username, String password) async {
  if (username == 'nidhiprajapati@6307' && password == '123456789') {  // Simulated login logic
    await storage.write(key: 'auth_token', value: 'secure_token');
    Navigator.pushReplacementNamed(context, '/dashboard');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid login credentials')));
  }
}

Future<void> logoutUser(BuildContext context) async {
  await storage.delete(key: 'auth_token');
  Navigator.pushReplacementNamed(context, '/login');
}
