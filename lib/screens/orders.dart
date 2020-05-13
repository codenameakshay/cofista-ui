import 'package:cofista/ui/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Map> data = [
    {
      "coffeeName": "Cappuccino",
      "coffeeDesc": "Streamed Milk, barista added layer,\nfoamy milk",
      "coffeeSize": "MEDIUM",
      "coffeePrice": 225.00
    },
    {
      "coffeeName": "Espresso",
      "coffeeDesc": "Streamed Milk, barista added layer,\nfoamy milk",
      "coffeeSize": "LARGE",
      "coffeePrice": 315.00
    },
    {
      "coffeeName": "Cafe Latte",
      "coffeeDesc": "Streamed Milk, barista  added layer,\nfoamy milk",
      "coffeeSize": "SMALL",
      "coffeePrice": 140.00
    },
    {
      "coffeeName": "Dalgona Coffee",
      "coffeeDesc": "Streamed Milk, barista added layer,\nfoamy milk",
      "coffeeSize": "MEDIUM",
      "coffeePrice": 450.00
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
                    "My Orders",
                    style:
                        GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 8,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        color: Color(0xFF4F4F4F),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                minRadius: 50,
                                backgroundColor: Color(0xFFC4C4C4),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  data[index]["coffeeName"],
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFF2F2F2),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  data[index]["coffeeDesc"],
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  data[index]["coffeeSize"],
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFEB5757),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  data[index]["coffeePrice"].toString(),
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFF2F2F2),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    onPressed: null),
                                CircleAvatar(
                                    backgroundColor: Color(0xFFF2F2F2),
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black),
                                    )),
                                IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    onPressed: null),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
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
