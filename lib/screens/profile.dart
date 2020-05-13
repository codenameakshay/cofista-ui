import 'package:cofista/ui/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map> data = [
    {
      "icon": Icons.person_outline,
      "Text": "My Account",
    },
    {
      "icon": Icons.shopping_cart,
      "Text": "My Old Orders",
    },
    {
      "icon": Icons.notifications,
      "Text": "Notifications",
    },
    {
      "icon": Icons.settings,
      "Text": "Settings",
    },
    {
      "icon": Icons.lock,
      "Text": "Logout",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333333),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                  Text(
                    "My Profile",
                    style:
                        GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CircleAvatar(
                    minRadius: 20,
                    backgroundColor: Color(0xFFF2F2F2),
                    child: Icon(
                      Icons.person_outline,
                      size: 90,
                      color: Color(0xFF323232),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: RaisedButton(
                          color: Color(0xFFEB5757),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                          },
                          child: Text(
                            'EDIT PROFILE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                          color: Color(0xFF4F4F4F),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(data[index]["icon"],color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(data[index]["Text"],
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: Colors.white)),
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: NavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
