import 'package:cofista/ui/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(3, 3),
    const StaggeredTile.count(3, 4),
    const StaggeredTile.count(3, 3),
    const StaggeredTile.count(3, 3),
  ];
  List<Widget> _tiles = const <Widget>[
    const _Example01Tile("HASHTAG CAFE"),
    const _Example01Tile("MOCHA CAFE"),
    const _Example01Tile("SOCIAL CAFE"),
    const _Example01Tile("AMBIENCE CAFE"),
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
                    "Search",
                    style:
                        GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 20, 20),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEB5757),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 6, 25, 6),
                      child: Text(
                        "Trending",
                        style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEB5757),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 6, 25, 6),
                      child: Text(
                        "Most Popular",
                        style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEB5757),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 6, 25, 6),
                      child: Text(
                        "Black Coffee",
                        style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: StaggeredGridView.count(
                  crossAxisCount: 6,
                  staggeredTiles: _staggeredTiles,
                  children: _tiles,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.all(20),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 70),
                        child: RaisedButton(
                          shape: StadiumBorder(),
                          onPressed: () {},
                          child: Text("SEE MORE",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Color(0xFF000000))),
                        ),
                      ),
                    )
                  ],
                )),
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

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.cardText);
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return new Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color(0xFF4F4F4F),
      child: new InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(cardText,
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Color(0xFFF2F2F2))),
                        Text("45/50 Rating",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Color(0xFFEB5757))),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF333333),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFFEB5757),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
