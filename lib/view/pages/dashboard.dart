import 'package:assessment_app/view/widgets/notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  Color darkBlue = Color.fromRGBO(82, 67, 210, 1);
  Color darkPurple = Color.fromRGBO(13, 7, 60, 1);
  Color lightPurple = Color.fromRGBO(61, 52, 139, 0.6);
  Color lightGreen = Color.fromRGBO(141, 215, 168, 1);
  Color darkGreen = Color.fromRGBO(29, 150, 74, 1);
  Color ash = Color.fromRGBO(5, 4, 11, 0.5);
  Color darkPink = Color.fromRGBO(229, 146, 165, 1);
  Color darkerPink = Color.fromRGBO(228, 62, 100, 1);
  Color iconPink = Color.fromRGBO(228, 50, 90, 1);
  Color purple = Color.fromRGBO(73, 27, 132, 1);
  Color backgroundWhite = Color.fromRGBO(247, 247, 254, 1);
  Color white = Color.fromRGBO(255, 255, 255, 1);

  List<String> items = ['This Month ', 'Last Month '];
  String? selectedItem = 'This Month ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      extendBody: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.person, size: 32),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Hi Janet,",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints.tight(Size(20, 24)),
                              icon: Icon(CupertinoIcons.search),
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.bottomCenter,
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints.tight(Size(20, 24)),
                              icon: Icon(CupertinoIcons.question_circle),
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.bottomCenter,
                            ),
                            SizedBox(width: 10),
                            NotificationWidget(
                              onTap: () {},
                            )
                          ]),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 36,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 54,
                              width: 172,
                              padding: EdgeInsets.all(8.4),
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(children: [
                                Icon(
                                  Icons.add_circle,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wallet Balance",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "N 2,342 : 00",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.visibility_off,
                                      size: 16,
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ],
                                )
                              ]),
                            ),
                            Spacer(),
                            Container(
                              height: 54,
                              width: 172,
                              padding: EdgeInsets.all(8.4),
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(children: [
                                Icon(
                                  Icons.add_circle,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Reward Balance",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "N 2,342 : 00",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.visibility_off,
                                      size: 16,
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ],
                                )
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //MAIN PART
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [
                          0.0,
                          0.4,
                          0.6,
                          1.0,
                        ],
                        colors: [
                          darkBlue,
                          darkBlue,
                          darkBlue,
                          purple,
                        ])),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Congratulations!!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            "You’ve completed all your tasks for the week and you won ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "150 points",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 7.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        height: 18,
                        width: 115,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Redeem Now!",
                            style: TextStyle(
                              color: darkBlue,
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 50,
                    width: 50,
                    color: Colors.amber,
                  )
                ]),
              ),

              //CARD
              SizedBox(
                height: 175,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 12, right: 12),
                    shrinkWrap: true,
                    //primary: false,
                    itemCount: 2,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 320,
                        height: 175,
                        margin: EdgeInsets.only(left: 12, right: 12),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //   image: AssetImage('assets/card_design.png'),
                            //   fit: BoxFit.fill,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.75),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 2.0,
                              ),
                            ],
                            color: Colors.blue),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10),
                                Text(
                                  "Virtual",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "1234  5678  9012  3456",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Expiry date",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "12/34",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 50),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CVV",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "123",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Janet M Doe",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(top: 75, right: 5),
                              color: Colors.amber,
                            )
                          ],
                        ),
                      );
                    }),
              ),

              Container(
                  width: 360,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: EdgeInsets.only(top: 25),
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction History",
                            style: TextStyle(
                              color: darkPurple,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Container(
                          //   width: 72,
                          //   height: 20,
                          //   child: ElevatedButton(
                          //     onPressed: () {},
                          //     child: Row(
                          //       children: [
                          //         Text(
                          //           "This Month",
                          //           style: TextStyle(
                          //             color: darkPurple,
                          //             fontSize: 8,
                          //             fontWeight: FontWeight.w600,
                          //           ),
                          //         ),
                          //         DropdownButton(items: , onChanged: ),
                          //       ],
                          //     ),
                          //     style: ElevatedButton.styleFrom(
                          //         primary: Colors.white,
                          //         elevation: 2,
                          //         padding: EdgeInsets.all(0),
                          //         shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(0))),
                          //   ),
                          // )
                          SizedBox(
                            width: 75,
                            // height: 20,
                            child: DropdownButton<String>(
                              elevation: 2,
                              alignment: Alignment.center,
                              value: selectedItem,
                              icon: Icon(
                                CupertinoIcons.chevron_down,
                                size: 13,
                                color: darkPurple,
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                          color: darkPurple,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )))
                                  .toList(),
                              onChanged: (item) => setState(() {
                                selectedItem = item;
                              }),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, right: 33, left: 6, bottom: 5),
                        margin: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                color: lightPurple,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Date",
                              style: TextStyle(
                                color: lightPurple,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 53),
                            Text(
                              "Time",
                              style: TextStyle(
                                color: lightPurple,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 23),
                            Text(
                              "Points",
                              style: TextStyle(
                                color: lightPurple,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        itemBuilder: ((context, index) {
                          Color avatarColor = (index == 0 || index == 3)
                              ? lightGreen
                              : darkPink;
                          Color pointColor = (index == 0 || index == 3)
                              ? darkGreen
                              : darkerPink;
                          Color iconColor =
                              (index == 0 || index == 3) ? darkGreen : iconPink;
                          return ListTile(
                              horizontalTitleGap: 0,
                              contentPadding: EdgeInsets.only(
                                  left: 5, right: 0, top: 0, bottom: 20),
                              leading: CircleAvatar(
                                  backgroundColor: avatarColor,
                                  radius: 20,
                                  child: Icon(Icons.wallet_giftcard_outlined,
                                      color: iconColor, size: 22)),
                              title: Row(
                                children: [
                                  SizedBox(width: 8),
                                  Text(
                                    "SuperMart",
                                    style: TextStyle(
                                      color: darkPurple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "12/06/2022",
                                    style: TextStyle(
                                      color: ash,
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 22),
                                  Text(
                                    "12:34",
                                    style: TextStyle(
                                      color: ash,
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "+50points",
                                    style: TextStyle(
                                      color: pointColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ));
                        }),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
