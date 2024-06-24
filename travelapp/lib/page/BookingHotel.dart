import 'package:flutter/material.dart';
import 'package:travelapp/components/CustomShapeClipper.dart';

class Bookinghotel extends StatefulWidget {
  @override
  State<Bookinghotel> createState() => _BookinghotelState();
}

class _BookinghotelState extends State<Bookinghotel> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;

    double hightOfTopContainer = hight * (20 / 100);

    Widget bgWidget = Positioned(
        child: Container(
            width: width,
            height: hightOfTopContainer,
            decoration: BoxDecoration(
                color: Color(0xFFffdfe0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: hightOfTopContainer * (60 / 100),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.1,
                        0.4,
                        0.6,
                        0.9,
                      ],
                      colors: [
                        Color(0xFFFB7C83),
                        Color(0xFFFCA0A3),
                        Color(0xFFFFC4C6),
                        Color(0xFFFFD9DA),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(30))),
              ),
            )));
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: hight,
        color: Colors.white70,
        child: Stack(
          children: [
            bgWidget,
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 48, left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(360)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(3, 3))
                            ]),
                        child: Center(
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(360)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(3, 3))
                            ]),
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.currency_exchange_outlined),
                                onPressed: () {},
                              ),
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "Bath",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 36),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "All rooms",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                top: hight * (17 / 100),
                child: Container(
                  width: width * (95 / 100),
                  height: hight * (60 / 100),
                  margin: EdgeInsets.symmetric(horizontal: width * (2.5 / 100)),
                  // color: Colors.amber,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: width * (95 / 100),
                        height: (hight * (55 / 100)) * (95 / 100),
                        // color: Colors.orange.shade50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            border: Border.all(color: Colors.grey.shade300),
                            color: Colors.white),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        margin: EdgeInsets.symmetric(
                            horizontal: (width * (95 / 100) / 3.8)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Colors.red.shade400),
                        child: Center(
                          child: Text(
                            "New!",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: width * (95 / 100),
                        // height: 30,
                        margin: EdgeInsets.symmetric(vertical: 25),
                        // color: Colors.green.shade600,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Overnight",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      selectionColor: Colors.blue.shade300,
                                    ),
                                    Container(
                                      margin: EdgeInsetsDirectional.symmetric(
                                          horizontal: 8),
                                    ),
                                    Text(
                                      "Day Use",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      selectionColor: Colors.blue.shade300,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade300,
                                          width: 1))),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search),
                                          suffixIcon: Icon(Icons.map),
                                          filled: true,
                                          fillColor: Color(0xFFEEF1F9),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          labelText:
                                              'Where would you like to go?',
                                          labelStyle: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: 200,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, top: 16),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              prefixIcon:
                                                  Icon(Icons.calendar_month),
                                              filled: true,
                                              fillColor: Color(0xFFEEF1F9),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16))),
                                              labelText: 'Wed, Jun 19',
                                              labelStyle: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 14)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: 200,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, top: 16),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              prefixIcon:
                                                  Icon(Icons.calendar_month),
                                              filled: true,
                                              fillColor: Color(0xFFEEF1F9),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(16))),
                                              labelText: 'Mon, Jun 25',
                                              labelStyle: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 14)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.people_alt),
                                          filled: true,
                                          fillColor: Color(0xFFEEF1F9),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          labelText:
                                              '1 room 4 adults 0 children',
                                          labelStyle: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          value: false,
                                          onChanged: null,
                                          activeColor: Colors.blue.shade600,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Icon(
                                            Icons.alarm,
                                            size: 25,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 4),
                                          child: Text(
                                            "Show limited time\n offers first",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Poppins",
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Container(
                                            width: 120,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.red.shade500),
                                            child: Center(
                                              child: Text(
                                                "Save up to 20%",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Poppins",
                                                    fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: width,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.8,
                                            color: Colors.grey.shade300))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(360)),
                                          border: Border.all(
                                              color: Colors.grey.shade300)),
                                      child: Icon(
                                        Icons.map,
                                        color: Colors.blue.shade600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: InkWell(
                                      child: Container(
                                        width: width * (70 / 100),
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: Color(0xFF3170E6)),
                                        child: Center(
                                          child: Text(
                                            "Search",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: width * (90 / 100),
                height: 200,
                color: Colors.amberAccent,
                child: CustomPaint(
                  painter: CustomShapePainter(),
                  child: Container(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
