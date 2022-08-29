import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  bool selected = true;
  String dropdownvalue = '1';
  List Travel = [1, 2, 3, 4, 'Car'];
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('asset/close.png'),
        title: Text('Add New Book'),
        backgroundColor: Color(0xffFEC260),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Book Available',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 1.95),
                Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.green,
                  onChanged: (bool value) {},
                  value: true,
                ),
              ],
            ),
            Text(
              'Book Name',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. Journey to the West',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Book Category',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. Fiction',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        ShowBottomsheet(context);
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Author Name',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. Mary Jane',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Row(
              children: [
                Text(
                  'Set current location as address?',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 5.5),
                Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.green,
                  onChanged: (bool value) {},
                  value: true,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Location Address',
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 2),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Text('Address Line 1 '),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Street, Address, Company Name, C/O',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              'City',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. Journey to the West',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              'Postal/Zip Code',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. 544440',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showAlertDialog(context);
                      },
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'State',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 50,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Eg. Kuala Lumpur',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              'Book Description',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 100,
              color: Color(0xffF2F2F2),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Describe what the book is about and include '
                        'details a reader might be interested in, people do love some stories! ',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Text(
              'Upload Book Cover Image',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 100,
              color: Color(0xffF2F2F2),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Center(
                          child: Row(
                        children: [
                          Image.asset('asset/gallery.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Choose from gallery',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F80ED)),
                          )
                        ],
                      )),
                    ),
                    hintText: '',
                    // fillColor:
                    // filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: FlatButton(
                color: Color(0xffFEC260),
                onPressed: () {},
                child: Text(
                  'ADD',
                  style: GoogleFonts.roboto(
                      fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> ShowBottomsheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: ListView(
            children: [
              Text(
                'Select a Book Catagory',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w900, fontSize: 18),
              ),
              ListTile(
                title: Text(
                  'Fiction',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radio.png'),
              ),
              ListTile(
                title: Text(
                  'Non Fiction',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radioblank.png'),
              ),
              ListTile(
                title: Text(
                  'Textbooks',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radioblank.png'),
              ),
              ListTile(
                title: Text(
                  'Kids',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radioblank.png'),
              ),
              ListTile(
                title: Text(
                  'Self-helpings',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radioblank.png'),
              ),
              ListTile(
                title: Text(
                  'Comics',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset('asset/radioblank.png'),
              ),
            ],
          ),
        );
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'asset/location.png',
            color: Colors.blue,
            fit: BoxFit.cover,
            height: 40,
            width: 40,
          )),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
                text: 'Allow ',
                style: GoogleFonts.roboto(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 16),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () => {
                        print('navigate'),
                      },
                children: [
                  TextSpan(
                      text: ' Little Library ',
                       style: GoogleFonts.roboto(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20)),

                  TextSpan(
                      text: 'to access this device’s location',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w700,),),
                ]),
          ),
          Divider(),
          Image.asset('asset/circle.png'),
          Divider(),
          Text('While using the app',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),),
          Divider(),
          Text('Only this time',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),)
         , Divider(),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:  Text('Deny',style:GoogleFonts.roboto(fontWeight: FontWeight.w800,fontSize: 16,color: Colors.blue),),
          )

        ],
      ),

    );
    AlertDialog cameralert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
                'asset/location.png',
                color: Colors.blue,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              )),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
                text: 'Allow ',
                style: GoogleFonts.roboto(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 16),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () => {
                    print('navigate'),
                  },
                children: [
                  TextSpan(
                      text: ' Little Library ',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20)),

                  TextSpan(
                    text: 'to access this device’s location',
                    style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700,),),
                ]),
          ),
          Divider(),
          Image.asset('asset/circle.png'),
          Divider(),
          Text('While using the app',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),),
          Divider(),
          Text('Only this time',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),)
          , Divider(),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:  Text('Deny',style:GoogleFonts.roboto(fontWeight: FontWeight.w800,fontSize: 16,color: Colors.blue),),
          )

        ],
      ),

    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return cameralert;
      },
    );
  }


}
