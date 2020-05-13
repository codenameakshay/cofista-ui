import 'package:cofista/ui/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(3, 4),
    const StaggeredTile.count(3, 3),
    const StaggeredTile.count(3, 4),
    const StaggeredTile.count(3, 3),
    const StaggeredTile.count(6, 2),
  ];
  List<Widget> _tiles = const <Widget>[
    const _Example01Tile("BREAKFAST"),
    const _Example01Tile("COFFEE"),
    const _Example01Tile("SMOOTHIE"),
    const _Example01Tile("TEA"),
    const _Example01Tile("DONUTS & PASTRIES"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                        child: Center(
                      child: Text("Good Morning, Arnav",
                          style: GoogleFonts.poppins(
                              fontSize: 30, color: Colors.white)),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text("What would you like to have today?",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Color(0xFFEB5757)))),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 11,
                child: Container(
                  child: StaggeredGridView.count(
                    crossAxisCount: 6,
                    staggeredTiles: _staggeredTiles,
                    children: _tiles,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    padding: EdgeInsets.all(12),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 100),
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
                flex: 4,
                child: Container(
                  child: NavBar(),
                )),
          ]),
        ));
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
                child: Text(cardText,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Color(0xFFF2F2F2))),
              )
            ],
          )),
    );
  }
}
