import 'package:cofista/ui/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                    "My Favourites",
                    style:
                        GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF2F2F2),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: null),
                    ),
                    Text(
                      "Search",
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                children: <Widget>[],
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
