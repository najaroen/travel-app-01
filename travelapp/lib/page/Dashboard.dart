import 'package:flutter/material.dart';
import 'package:travelapp/helper/CustomPath.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List menuList = [
    {"title": "Airport Transfer", "icon": Icons.airplane_ticket},
    {"title": "Car\n Rentrals", "icon": Icons.car_rental},
    {"title": "eSim", "icon": Icons.sim_card},
    {"title": "Trains", "icon": Icons.train},
    {"title": "Airport\n Transfer", "icon": Icons.car_rental},
    {"title": "Airport\n Transfer", "icon": Icons.car_rental},
  ];
  List colorList = [
    Colors.red.shade700,
    Colors.yellow.shade600,
    Colors.green.shade700,
    Colors.purple.shade700,
    Colors.blue.shade700,
  ];
  List flightList = [
    {
      'title': "",
      'cover':
          "https://booking.evaair.com/FLYEVA/content/images/b2c/hotdeal/NRT-1.jpg",
    },
    {
      'title': "",
      'cover':
          "https://booking.evaair.com/FLYEVA/content/images/b2c/hotdeal/SFO-1.jpg",
    },
    {
      'title': "",
      'cover':
          "https://booking.evaair.com/FLYEVA/content/images/b2c/hotdeal/KIX-1.jpg",
    },
    {
      'title': "",
      'cover':
          "https://booking.evaair.com/FLYEVA/content/images/b2c/hotdeal/TPE-1.jpg",
    },
    {
      'title': "",
      'cover':
          "https://booking.evaair.com/FLYEVA/content/images/b2c/hotdeal/AMS-1.jpg",
    }
  ];
  Widget TopBarWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * (1 / 4),
            child: Container(
              // color: Colors.red.shade400,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      "agogo",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.normal,
                          // fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(360)),
                              color: Colors.red.shade700),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(360)),
                              color: Colors.yellow.shade600),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(360)),
                              color: Colors.green.shade700),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(360)),
                              color: Colors.purple.shade700),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(360)),
                              color: Colors.blue.shade700),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * (1 / 4),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget MenuWidget(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * (26 / 100),
        // color: Colors.red.shade500,
        child: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width * (45 / 100),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFFffdfe2),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hotels",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      // Container(
                      //   child: Image.asset("/images/hotels.png"),
                      // )
                    ],
                  ),
                ),
                Container(
                  width: width * (45 / 100),
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFFF1DDFF)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Flights",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // color: Colors.green.shade500,
                  child: Stack(
                    children: [
                      Container(
                        // color: Colors.purpleAccent.shade700,
                        width: width * (30 / 100),
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: width * (30 / 100),
                        height: 95,
                        decoration: BoxDecoration(
                            color: Color(0xFFe0f7ff),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Flight\n + Hotel",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          left: 35.0,
                          top: 0,
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Text(
                                "New",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 14),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.green.shade500,
                  child: Stack(
                    children: [
                      Container(
                        // color: Colors.purpleAccent.shade700,
                        width: width * (30 / 100),
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: width * (30 / 100),
                        height: 95,
                        decoration: BoxDecoration(
                            color: Color(0xFFfbf2d6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Activities",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          left: 35.0,
                          top: 0,
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Text(
                                "New",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 14),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.green.shade500,
                  child: Stack(
                    children: [
                      Container(
                        // color: Colors.purpleAccent.shade700,
                        width: width * (30 / 100),
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: width * (30 / 100),
                        height: 95,
                        decoration: BoxDecoration(
                            color: Color(0xFFECFCD2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Home\n & Apts",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          left: 35.0,
                          top: 0,
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Center(
                              child: Text(
                                "New",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 14),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget SubMenuWidget(double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: width,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(menuList.length, (index) {
            return Container(
              width: 100,
              height: 20,
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              // color: Colors.pink.shade300,
              child: Center(
                  child: Flex(
                mainAxisAlignment: MainAxisAlignment.center,
                direction: Axis.vertical,
                children: [
                  Icon(
                    menuList[index]['icon'],
                    color: Colors.blue.shade600,
                    weight: 50.0,
                    size: 30,
                  ),
                  Text(
                    menuList[index]['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
            );
          })),
    );
  }

  Widget OfferWidget(double width) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      width: width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  size: 25,
                  Icons.airplane_ticket_outlined,
                  color: Color(0xFF242424),
                ),
              ),
            ),
            Container(
              child: Text(
                "Up to 10% off coupon for 2nd \napp booking",
                textAlign: TextAlign.start,
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "View",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.blue.shade600,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SpecialDealWidget(double width, double height) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: width,
      height: height * (20 / 100),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(menuList.length, (index) {
            return Container(
              width: width * (60 / 100),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                // color: Colors.yellow.shade300,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                // border: Border.all(color: Colors.grey.shade300)
              ),
              // color: Colors.pink.shade300,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: SizedBox.fromSize(
                      // size: Size.fromRadius(48), // Image radius
                      child: Image.network(
                          "https://a0.muscache.com/im/pictures/miso/Hosting-871258400871863715/original/f42393dc-ef0f-4d1a-a5b6-898da41f1532.png?im_w=1200",
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            color: Color(0xFFffdcda)),
                        child: Center(
                          child: Icon(
                            Icons.local_hotel,
                            color: Color(0xFFdf3f3c),
                          ),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: width * (10 / 100),
                          horizontal: width * (10 / 100)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  "agogo",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: width * (9 / 100)),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(colorList.length,
                                        (index) {
                                      return Container(
                                        width: 12,
                                        height: 12,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(360)),
                                            color: colorList[index]),
                                      );
                                    }),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "Discover travel \n tips from top",
                                    style: TextStyle(
                                        height: 0.9,
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          })),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: ListView(
          children: [
            TopBarWidget(),
            MenuWidget(width),
            SubMenuWidget(width),
            OfferWidget(width),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Special deals",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SpecialDealWidget(width, height),
            Container(
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(
                "Flight & Activities Promotions",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: width,
              height: height * (20 / 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(flightList.length, (index) {
                    return Container(
                      width: width * (60 / 100),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        // color: Colors.yellow.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        // border: Border.all(color: Colors.grey.shade300)
                      ),
                      // color: Colors.pink.shade300,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            child: SizedBox.fromSize(
                              // size: Size.fromRadius(48), // Image radius
                              child: Image.network(flightList[index]['cover'],
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16)),
                                    color: Color(0xFFf6defc)),
                                child: Center(
                                  child: Icon(
                                    Icons.airlines_outlined,
                                    color: Color(0xFFbd36ec),
                                  ),
                                ),
                              )),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: width * (10 / 100),
                                  horizontal: width * (10 / 100)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Flex(
                                      direction: Axis.vertical,
                                      children: [
                                        Text(
                                          "agogo",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: width * (9 / 100)),
                                          child: Flex(
                                            direction: Axis.horizontal,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: List.generate(
                                                colorList.length, (index) {
                                              return Container(
                                                width: 12,
                                                height: 12,
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                360)),
                                                    color: colorList[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text(
                                            "Discover travel \n tips from top",
                                            style: TextStyle(
                                                height: 0.9,
                                                fontFamily: "Poppins",
                                                color: Colors.white,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
