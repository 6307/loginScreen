import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Text('Welcome to the Dashboard!', style: TextStyle(fontSize: 19)),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Image.asset(
              "assets/images/signup.png",
              width: 413,
              height: 457,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
         ]
      ),
    );
  }
}
