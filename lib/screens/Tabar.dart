import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelibrary/Authentication/SigIn_up.dart';

import '../Authentication/SigIn_dart.dart';
import 'Home_Screen.dart';

class Tabbar extends StatefulWidget {
  @override
  State<Tabbar> createState() => _MyAppState();
}

class _MyAppState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'All Books',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.pinkAccent),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDFE1E6)),
                            borderRadius: BorderRadius.circular(40)),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Search for a book name or location',
                        border: OutlineInputBorder(
                            gapPadding: 2,
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                )
              ],
            ),
            backgroundColor: Colors.white,
            // title: Padding(
            //   padding: const EdgeInsets.only(top: 8.0),
            //   child: TextField(
            //     decoration: new InputDecoration(
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
            //       ),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.red, width: 5.0),
            //       ),
            //       hintText: 'Mobile Number',
            //     ),
            // )),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicator: BoxDecoration(color: Colors.white),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.all(0),
              unselectedLabelColor: Colors.black,
              labelColor: Colors.teal,
              tabs: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Container(
                    child: Center(child: Text('All')),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffFEC260),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Container(
                    child: Center(child: Text('Fiction')),
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Container(
                    child: Center(child: Text('Non Fiction')),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Container(
                    child: Center(child: Text('Textbooks')),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                // DecoratedBox(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(50))),
                //   child: Container(
                //     child: Center(child: Text('Kids')),
                //     height: 30,
                //     width: 60,
                //     decoration: BoxDecoration(
                //       color: Color(0xffFEC260),
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //   ),
                // ),
                // DecoratedBox(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(50))),
                //   child: Container(
                //     child: Center(child: Text('Self-help ')),
                //     height: 30,
                //     width: 60,
                //     decoration: BoxDecoration(
                //       color: Color(0xffFEC260),
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //   ),
                // ),
                // DecoratedBox(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(50))),
                //   child: Container(
                //     child: Center(child: Text('Section ')),
                //     height: 30,
                //     width: 60,
                //     decoration: BoxDecoration(
                //       color: Color(0xffFEC260),
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //   ),
                // ),

                // Tab( text: "Tab 1",),
                //   Tab(text:'Fiiction',),
                //   Tab(text: 'Non-Fiction ',),
                //   Tab(text: 'Textbooks',),
                //   Tab(text:'Kids',),
                //   Tab(text: 'Self-help ',),
                //   Tab(text: 'Comics ',),
              ],
            ),
          ),
          // Column(
          //   children: [
          //     Text('usama',style: TextStyle(color: Colors.red),)
          //   ],
          // )
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            Fiiction(),
            NonFiiction(),
            TextBook(),
            // Kids(),
            // Comrics(),
            // SignUp()
          ],
        ),
      ),
    );
  }
}

class Fiiction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}

class NonFiiction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}

class TextBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}

class Kids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}

class Self_help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}

class Comrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Here Found The Fiction'),
      ),
    );
  }
}
