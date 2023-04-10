import 'package:flutter/material.dart';
import 'package:lovecalculator/loadingpage.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/iamge.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 40,
                right: 40,),
                child: Center(
                  heightFactor: 2.0,
                  child: Text(
                    '❤\n❤LOVE❤\n ❤CALCULATOR❤\n ❤❤❤❤❤❤❤',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                        fontSize: 33,
                        fontWeight:FontWeight.bold
                    ),
                  ),
                ),
              ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.35,
                  right: 35,
                  left: 35
                ),

                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Your Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),

                    Image.asset(
                      'assets/images/love.png',
                      height: 150,
                      width: 150,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Crush's Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // TextButton(onPressed: (){}, child: Text('CALCULATE'))
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoadingPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: Text(
                            'CALCULATE',
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

