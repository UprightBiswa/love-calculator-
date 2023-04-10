
import 'dart:math';
import 'package:flutter/material.dart';

class PresentagePage extends StatefulWidget {
  @override
  _PresentagePageState createState() => _PresentagePageState();
}

class _PresentagePageState extends State<PresentagePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  int _percent = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller!.repeat(reverse: true);
    _percent = Random().nextInt(31) + 70; // Random number between 70 to 100
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        heightFactor: 2.0,
        child: Stack(
          children: [
            Container(
              child: TweenAnimationBuilder(
                tween: AlignmentTween(
                  begin: Alignment(-0.5, -0.5),
                  end: Alignment(0.5, 0.5),
                ),
                duration: Duration(seconds: 2),
                builder: (BuildContext context, Alignment alignment, Widget? child) {
                  return Positioned.fill(
                    child: Opacity(
                      opacity: 0.4,
                      child: Align(
                        alignment: alignment,
                        child: Image.asset(
                          "assets/images/love.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              child:
              Column(
                  children:[
                  Container(
                    padding: EdgeInsets.only(
                    top: 100,
                    left: 40,
                    right: 40,
                  ) ,
                    child: Text(
                      "Love Calculator",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      child: AnimatedBuilder(
                        animation: _controller!,
                        builder: (BuildContext context, Widget? child) {
                          return Opacity(
                            opacity: _controller!.value,
                            child: Image.asset(
                              "assets/images/love.png",
                              height: 100,
                              width: 100,
                            ),
                          );
                        },
                      ),
                    ),
                  Container(
                        child: Text(
                          "$_percent%",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )

                    ),
                    SizedBox(height: 400),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Go back to Home",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                    ),

                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
