import 'package:flutter/material.dart';
import 'package:lovecalculator/homepage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage' ,
    routes: {
      'homepage':(context)=>homepage(),

    },
  ));

}



