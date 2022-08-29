import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelibrary/Authentication/SigIn_up.dart';

import '../Authentication/SigIn_dart.dart';
import 'Tabar.dart';
import 'list_user-chat.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List changeindex = [
    Tabbar(),
    SignUp(),
    searching(),
    // Home(), Feeds(), PostCreate(), MyTraining(), Profile()
  ];
  _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: changeindex[_selectedIndex],
        bottomNavigationBar: Container(
          width:MediaQuery.of(context).size.height/9 ,
          height: MediaQuery.of(context).size.height/7,
          child:FloatingNavbar(
            backgroundColor:Color(0xffFEC260),
            unselectedItemColor: Colors.grey.shade50,
            selectedBackgroundColor: Color(0xff2A0944),
            onTap: onTap,
            currentIndex: _selectedIndex,
            
            items: [



              floatingNavBar(Image.asset('asset/home.png',height: 28,width: 28,),''),
              floatingNavBar(Image.asset('asset/explore.png'),'Feed',),
              // FloatingNavbarItem(
              //   customWidget: Column(
              //     children: [
              //
              //       // FloatingActionButton(
              //       //     onPressed: (){
              //       //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>
              //       //       //     // PostCreate()
              //       //       // ));
              //       //     },
              //       //     backgroundColor: Colors.black,
              //       //     child:  Icon(Icons.add,color: Colors.white,size:30,)
              //       // ),
              //       // Text(
              //       //   'New Post',
              //       //   textAlign: TextAlign.center,
              //       //   overflow: TextOverflow.clip,
              //       //   style: GoogleFonts.inter(
              //       //     fontWeight: FontWeight.w400, fontSize: 9, color: Color(0xff806B40),),
              //       // ),
              //     ],
              //   ),
              // ),
              floatingNavBar(Image.asset('asset/add_text.png',height: 20,),'Training',),

              floatingNavBar(Image.asset('asset/chatt.png',height: 20,),'Training',),

              floatingNavBar(Image.asset('asset/Person.png'),'Profile',),
            ],
          ),
        ));
  }

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
floatingNavBar(Image image ,String string,){
  return  FloatingNavbarItem(
    customWidget: Container(
      height: 39,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(40)
      ),
      child: Column(
        children: [
          image,
          Text(string,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: GoogleFonts.inter(fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff806B40))),
        ],
      ),
    ),
  );
}