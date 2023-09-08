import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storedataflutter/profilescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  resetNewLaunch () async{
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('newLaunch',false);
  }
@override
  void initState() {
    // TODO: implement initState
  super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(context,MaterialPageRoute(
          builder: (context)=>ProfileScreen()) );
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
