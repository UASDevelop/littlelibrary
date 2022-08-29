import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Chatt_UI.dart';
import 'Home_Screen.dart';

class BookDetail extends StatefulWidget {
  String? image;
  BookDetail({this.image});
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text('Book Details',style: GoogleFonts.roboto(fontWeight: FontWeight.w700,color: Color(0xff2A0944)),),
        backgroundColor: Color(0xffFEC260),
        actions: [
          Image.asset('asset/bookmark1.png')],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image 4.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Stack(
            children: [
              Opacity(
                  opacity: 0.60,
              child: Container(
                height: 570,
                color: Colors.grey.withAlpha(2),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        leading: Text('Think & Grow Rich',
                            style: GoogleFonts.gothicA1(
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff0F0F0F),
                            )),
                        trailing: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffE3FCEF),
                          ),
                          height: 40,
                          width: 90,
                          child: Center(
                            child: Text(
                              'Available',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Image.asset('asset/bolt_black_24dp 1.png'),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'July 20, 2022, 8:18pm by ',style: GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black),
                              children: [
                                TextSpan(
                                    text: 'user01234',
                                    style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue))
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Image.asset('asset/location.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Kampung Pulau Penarek, 84400 Sungai\n Mati, Johor, Malaysia',
                          textAlign: TextAlign.start,
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Image.asset('asset/catagory.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Self-help',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Color(0xff0F0F0F)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Author',
                      style: GoogleFonts.gothicA1(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Napoleon Hill',
                      style: GoogleFonts.gothicA1(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Book Description',
                        style: GoogleFonts.gothicA1(
                            fontWeight: FontWeight.w700, fontSize: 19)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
                      'et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'
                      ' incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit'
                      ', sed do eiusmod tempor',
                    //   ' incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                    // ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, '
                    //     'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                    //     ' Lorem ipsum dolor sit amet, consectetur'
                    //     ' adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      style: GoogleFonts.gothicA1(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:400),
                child: Center(
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      listchatt()
                      ));
                      // Respond to button press
                    },
                    isExtended: true,
                    icon: Image.asset(
                      'asset/chatt.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Chat',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
