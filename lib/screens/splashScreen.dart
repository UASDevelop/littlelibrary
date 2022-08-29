import 'package:flutter/material.dart';

import '../Authentication/SigIn_dart.dart';
import '../Authentication/SigIn_up.dart';
import '../Widget/splashSvg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToMainScreen();
  }

  navigateToMainScreen() async {
    await Future.delayed(const Duration(milliseconds: 6000));
  Navigator.push(context, MaterialPageRoute(builder: (context)=>
 SingIn()
  ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              color: Color(0xffFEC260),
            ),
            child: Center(
                child: Container(
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  child: svgImage('asset/Group 35.svg', 300, 500),
                ))));
  }
}