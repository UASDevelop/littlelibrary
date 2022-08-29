
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:littlelibrary/screens/Add_Book.dart';
import 'package:littlelibrary/screens/Bottomsheet.dart';
import 'package:littlelibrary/screens/Google%20map.dart';
import 'package:littlelibrary/screens/Tabar.dart';
import 'package:littlelibrary/screens/splashScreen.dart';

import 'ProfielScreen/Profile.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Googlemap()
      // EasySplashScreen(
      //   logo:
      //   Image.asset('asset/libra.png',fit: BoxFit.fitWidth,),
      //   title: Text(
      //     "Title",
      //     style: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: Color(0xffFEC260),
      //   showLoader: true,
      //   loadingText: Text("Loading..."),
      //   navigator:SplashScreen(),
      //   durationInSeconds: 5,
      // )

    );
  }
}

