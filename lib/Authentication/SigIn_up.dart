import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SigIn_dart.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding:  EdgeInsets.only(left: 40,top: 70,right: 30),
        child: ListView(
          children: [

          Image.asset('asset/large_title_grp.png'),
            SizedBox(height:MediaQuery.of(context).size.height/40,),

            Text('Create your account now to chat and explore',style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            Image.asset('asset/image1.png'),
            textfield('username','username',Image.asset('asset/Person.png',),context),
            SizedBox(height:MediaQuery.of(context).size.height/40,),


            textfield('Email', 'Email', Image.asset('asset/mail.png'),context),
            SizedBox(height:MediaQuery.of(context).size.height/40,),

            textfield('password', 'password', Image.asset('asset/lock.png'),context),
            SizedBox(height:MediaQuery.of(context).size.height/30,),

            Container(
              height: 40,
              child: FlatButton(
                color: Color(0xffFEC260),
               onPressed: (){},
                child:Text('CREATE ACCOUNT',style: GoogleFonts.roboto(fontSize: 21,fontWeight: FontWeight.w500),) ,
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height/20,),
        RichText(text:
        TextSpan(
          text: 'Have an existing account?',
          style: TextStyle(color: Color(0xff6F6F6F)),
          children: [
            TextSpan(text: ' Login here',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
              recognizer:  new TapGestureRecognizer()..onTap = () => {
              print('navigate'),
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
            SingIn()
            ))
            },

            )
          ]

        ),
        ),

        //button('',Function)
          ],
        ),
      )
    );
  }
}

Widget textfield(String label,String hint,Image image,BuildContext context){
  return Container(
height:50 ,
    child: TextField(
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          prefixIcon: image,
          border:OutlineInputBorder(
          borderSide: BorderSide(width:2,color: Color(0xff808080))
          )
      ),
    ),
  );
}

