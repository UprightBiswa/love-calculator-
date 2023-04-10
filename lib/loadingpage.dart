import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lovecalculator/percentagepage.dart';




class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Start the loading animation
    Timer(Duration(seconds: 2), () {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PresentagePage(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: Colors.pinkAccent,
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Colors.white,),
            SizedBox(height: 20),
            Text("Calculating...",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            )
          ],
        ),

      ),
    ),
    );
  }
}






