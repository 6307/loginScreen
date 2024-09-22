import 'package:flutter/material.dart';
import 'authentication.dart'; // For authentication logic

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    bool isLoggedIn = await checkUserLoginStatus();

    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/home.jpg',),
          // SizedBox(height: 20),
          // Text('App Name', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
