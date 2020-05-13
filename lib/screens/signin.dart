import 'package:cofista/screens/homescreen.dart';
import 'package:cofista/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                      child: Text("Welcome! Sign In",
                          style: GoogleFonts.poppins(
                              fontSize: 30, color: Colors.white)),
                    )),
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
                          color: Color(0xFFF2F2F2),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email)),
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
                          color: Color(0xFFF2F2F2),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock_open)),
                            ),
                          )),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 0, groupValue: 0, onChanged: (value) {}),
                            Text(
                              'Remember Me',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                                fontSize: 10, color: Colors.white),
                          ),
                        )
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
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
                child: Center(
                    child: Text(
                  'or',
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                ))),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: RaisedButton(
                          color: Color(0xFFF2F2F2),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                          },
                          child: Text(
                            'Continue with Google',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
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
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: RaisedButton(
                          color: Color(0xFF2F80ED),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                          },
                          child: Text(
                            'Continue with Facebook',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
            Expanded(flex: 2, child: Container()),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Have no account on Cofista?',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          onPressed: () {
                            HapticFeedback.vibrate();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegisterPage();
                            }));
                          },
                          child: Text(
                            'Get Registered',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ),
                  ],
                )),
          ]),
        ));
  }
}
