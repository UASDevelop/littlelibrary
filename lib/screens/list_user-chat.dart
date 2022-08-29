import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelibrary/screens/Chatt_UI.dart';

class searching extends StatefulWidget {
  @override
  _searchingState createState() => _searchingState();
}

class _searchingState extends State<searching> {
  List user=['user1','user2','user3','user4','user5','user6'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE3ECF1),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Text(
                'All Chats',
                style:
                    GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a username',
                    hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400,fontSize: 16),
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: user.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              child: Icon(Icons.person),
                              radius: 20,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              user[index],
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>
                             listchatt()
                             ));
                           },
                           child:Icon(Icons.arrow_forward),
                         ),
                            SizedBox(
                              width: 16,
                            ),
                            // Expanded(
                            //   child: Container(
                            //     color: Colors.transparent,
                            //     child: GestureDetector(
                            //       onTap: () {
                            //         // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            //         //     listchatt(doc['name'],doc['imagerul'])
                            //         // ));
                            //       },
                            //       child: Column(
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: <Widget>[
                            //           SizedBox(
                            //             height: 6,
                            //           ),
                            //
                            //           // Text(widget.messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),

                      // Text(widget.time,style: TextStyle(fontSize: 12,fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal),),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
