import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/login.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({super.key});

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override

  //it will call first
  void initState() {
    goToLogin();
    super.initState();
  } 

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 111, 65),
      body: Center(
        child: Container(child: Image.asset('assets/star.png')),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> goToLogin() async {
    await Future.delayed(
      Duration(seconds: 3)
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => ScreenLogin()),
    );
  }

  
  }

