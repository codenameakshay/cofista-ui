import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      child: Text("Create an account",
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
                        child: Text("It's quick and easy!",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white))),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: StadiumBorder(),
                          color: Color(0xFFF2F2F2),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Full Name",
                              ),
                            ),
                          )),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: StadiumBorder(),
                          color: Color(0xFFF2F2F2),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email ID or Phone Number",
                              ),
                            ),
                          )),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: StadiumBorder(),
                          color: Color(0xFFF2F2F2),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                              ),
                            ),
                          )),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text("Gender",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white))),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 0, groupValue: 0, onChanged: (value) {}),
                            Text(
                              'Male',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 0, groupValue: 0, onChanged: (value) {}),
                            Text(
                              'Female',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 0, groupValue: 0, onChanged: (value) {}),
                            Text(
                              'Other',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text(
                              'By ticking you agree, with all our Terms and Conditions',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            Expanded(
                flex: 2,
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
                            'SIGN UP!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
            Expanded(flex: 6, child: Container()),
          ]),
        ));
  }
}
