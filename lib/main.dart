import 'package:cofista/screens/homescreen.dart';
import 'package:cofista/screens/profile.dart';
import 'package:cofista/screens/register.dart';
import 'package:cofista/screens/search.dart';
import 'package:cofista/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cofista',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cofista'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: Color(0xFFEB5757),
                          child: Center(
                            child: Text("CAFE HOUSE",
                                style: GoogleFonts.racingSansOne(fontSize: 30)),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    child: Image.asset("assets/images/Rectangle 49.png",
                        fit: BoxFit.fill),
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
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                          },
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ),
                  ],
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
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Center(
                        child: Text("WELCOME!",
                            style: GoogleFonts.oregano(
                                fontSize: 30, color: Colors.white)),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
