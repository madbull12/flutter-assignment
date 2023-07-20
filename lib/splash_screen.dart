import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some delay, e.g., loading data, checking authentication, etc.
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'POSTZ',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 16),
              Text(
                'Write meaningful posts',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
