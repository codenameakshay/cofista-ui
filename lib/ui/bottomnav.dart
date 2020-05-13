import 'package:cofista/screens/favourites.dart';
import 'package:cofista/screens/orders.dart';
import 'package:cofista/screens/homescreen.dart';
import 'package:cofista/screens/profile.dart';
import 'package:cofista/screens/search.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Color(0xFFEB5757),
        ),
        child: SizedBox(
          width: 449,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Profile();
                        }));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Search();
                        }));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Favourites();
                        }));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.attach_money,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Orders();
                        }));
                      }),
                ],
              ),
              Text(""),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF000000)),
                child: SizedBox(
                  height: 6,
                  width: 160,
                ),
              )
            ],
          ),
        ));
  }
}
