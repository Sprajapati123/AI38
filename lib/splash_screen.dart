import 'dart:async';
import 'dart:ffi';

import 'package:ai38ai/dashboard_screen.dart';
import 'package:ai38ai/login_screen.dart';
import 'package:ai38ai/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      navigate();
    });
  }

  navigate() async{
    final SharedPreferences prefs =
    await SharedPreferences.getInstance();

    final bool? isLoggedIn = prefs.getBool('isLoggedIn');

    if(isLoggedIn == true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/faceebook.png"),
          SizedBox(height: 10),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
