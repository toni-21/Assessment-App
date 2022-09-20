import 'package:assessment_app/view/widgets/notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Color darkBlue = Color.fromRGBO(82, 67, 210, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(top: 30, left: 25, right: 25),
          child: ListView(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
