import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/Bottom_File.dart';
import 'SigIn_up.dart';

class SingIn extends StatelessWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 40,top: 70,right: 30),
        child: ListView(
          children: [

            Image.asset('asset/large_title_grp.png'),
            SizedBox(height:MediaQuery.of(context).size.height/40,),
            Text('Login now to explore what’s good',style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            SizedBox(height:MediaQuery.of(context).size.height/40,),

            Image.asset('asset/Book Lover_Isometric 1.png'),
            textfield('Email', 'Email', Image.asset('asset/mail.png'),context),
            SizedBox(height:MediaQuery.of(context).size.height/40,),
            textfield('password', 'password', Image.asset('asset/lock.png'),context),
            SizedBox(height:MediaQuery.of(context).size.height/40,),
            Container(
              height:MediaQuery.of(context).size.height/19,
              child: FlatButton(
                color: Color(0xffFEC260),                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  BottomNavigation()
                  ));
              },
                child:Text('LOGIN',style: GoogleFonts.roboto(fontSize: 21,fontWeight: FontWeight.w500),) ,
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height/40,),
            RichText(text:
            TextSpan(
                text: 'Don’t have an account yet? ',
                style: TextStyle(color: Color(0xff6F6F6F)),recognizer:  new TapGestureRecognizer()..onTap = () =>
           { print('navigate'),
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
            SingIn()
            ))},
                children: [
                  TextSpan(text: ' Creat here',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                    recognizer:  new TapGestureRecognizer()..onTap = () => {
                      print('navigate'),
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          SignUp()
                      ))
                    },

                  )
                ]

            ),
            ),

            //button('',Function)
          ],
        ),
      ),
    );
  }
}
