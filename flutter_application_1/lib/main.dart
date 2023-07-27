import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     title: 'Starbucks',
     theme: ThemeData(
       primarySwatch: Colors.green,
     ),
     debugShowCheckedModeBanner: false,
     home: const Screensplash(), 
    );
  }
}