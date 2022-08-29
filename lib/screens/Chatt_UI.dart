import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class listchatt extends StatefulWidget {
  // String nametext;
  // String image;
  // listchatt(this.nametext,this.image);

  @override
  _listchattState createState() => _listchattState();
}

class _listchattState extends State<listchatt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFEC260),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: Colors.black,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person),
                  // backgroundImage: NetworkImage(widget.image.toString()),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('usama Mukhtair',style: GoogleFonts.roboto(fontWeight: FontWeight.w700,fontSize: 13),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(top: 500,left: 20,right: 20),
            child: Container(
              height: 100,
              color: Color(0xffFFE8C3),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                    Image.asset('asset/imag1.png'),
                  SizedBox(width: 10,),
                  Text('Think & Grow Rich',
                      style: GoogleFonts.gothicA1(
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff0F0F0F),
                      )),
                  SizedBox(width: 30,),
                  Image.asset('asset/close.png')
                ],
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 100,
              color: Color(0xffFEC260),
              child: Container(
                child: Row(
                  children: <Widget>[
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Container(
                    //     height: 30,
                    //     width: 30,
                    //     decoration: BoxDecoration(
                    //       color: Colors.lightBlue,
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     child: Icon(Icons.add, color: Colors.white, size: 20,),
                    //   ),
                    // ),
                    SizedBox(width: 15,),
                    Expanded(
                      child:
                      TextField(
                        enableInteractiveSelection: true,
                        autocorrect: true,
                        enableSuggestions: true,
                        toolbarOptions: ToolbarOptions(
                          copy: true,
                          paste: true,
                          cut: true,
                          selectAll: true,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.fromLTRB(
                              20, 24, 12, 16),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  8.0))),
                          // filled: true,
                          hintText: 'Write message here',

                        ),
                      ),

                    ),
                    SizedBox(width: 15,),
                    FloatingActionButton(


                      onPressed: () async {

                      },
                      child: Icon(Icons.send, color: Colors.black, size: 38,),
                      backgroundColor:Color(0xffFEC260),
                      elevation: 0,
                    ),
                  ],

                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
