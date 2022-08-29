import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text('My Profile',style: GoogleFonts.roboto(fontSize: 25,fontWeight: FontWeight.w700),),
            Image.asset('asset/profname.png'),
            SizedBox(height: 20,),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('asset/gallery.png',color: Colors.black,),
                    hintText: 'Upload Profile Picture',
                    suffixIcon: GestureDetector(
                      onTap: () {
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset('asset/Drawer.png',color: Colors.black,),
                    hintText: 'Upload Profile Picture',
                    suffixIcon: GestureDetector(
                      onTap: () {
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset('asset/bookmark2.png',color: Colors.black,),
                    hintText: 'Upload Profile Picture',
                    suffixIcon: GestureDetector(
                      onTap: () {
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 40,
              child: FlatButton(
                color: Color(0xffFEC260),
                onPressed: (){},
                child:Text('LOG OUT',style: GoogleFonts.roboto(fontSize: 21,fontWeight: FontWeight.w500),) ,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
