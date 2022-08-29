import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelibrary/screens/Bokk_detial.dart';
List imgList = [
  'asset/imag1.png',
  'asset/image 3.png',
  'asset/image 4.png',
  'asset/image 5.png',
  'asset/image 6.png'
].toList();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    // list of images
    List headingtext=['Think & grow Rich','i Am Malala','Developing Multi...','My Hero','The Vanishing Half'];
    List subheading=['Kampung Pulau Penarek,\n 84400 Sungai Mati, ...','Pos 191 batu 3, Jln\n Salleh, '
        'Kampung Bukit ...','Jln Tok Raja 3, Kampung Bukit\n Treh, 84000 Muar ...','Jln Tok Raja 3, Kampung Bukit \nTreh, 84000 Muar ...','Jln Tok Raja 3, Kampung Bukit \nTreh, 84000 Muar ...'];
    List name=['Users   123','shellykerby','jonasthed','shellykerb','jonasthedus',];
    List availabe=['Available','Available','Unavailable','Unavailable','Available'];
    List iconimage=['asset/bookmark1.png','asset/bookmark2.png','asset/bookmark2.png','asset/bookmark1.png','asset/bookmark1.png'];

    return Scaffold(
        backgroundColor: Color(0xffF9FDFF),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return
                GestureDetector(
                  onTap: (){
                    print('onpressed');
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>
                        BookDetail(image: imgList[index],)
                    ));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        imgList[index],
                      ),

                      // Text(text[index]),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Text(headingtext[index].toString(),style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff0F0F0F),),),
                              ),
                              Container(
                                width: 280,
                                child: ListTile(
                                  leading: Text(
                                      subheading[index],style: GoogleFonts.roboto(fontWeight: FontWeight.w400,fontSize: 12),),
                                  trailing: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                    Image.asset(iconimage[index]),
                                      SizedBox(height: 0,),
                                      ],
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: Icon(Icons.person),
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 05,left: 10),
                                      child: Text(name[index]),
                                    ),
                                SizedBox(width: 90,),
                                Text(availabe[index],style: GoogleFonts.gothicA1(fontSize: 14),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
            },
          ),
        ));
  }
}
