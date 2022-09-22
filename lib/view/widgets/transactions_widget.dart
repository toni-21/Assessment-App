import 'package:assessment_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionsWidgetState();
  }
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  List<String> items = ['This Month ', 'Last Month '];
  String? selectedItem = 'This Month ';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
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
              SizedBox(
                width: 75,
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
            padding: EdgeInsets.only(top: 5, right: 33, left: 6, bottom: 5),
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
              Color avatarColor =
                  (index == 0 || index == 3) ? lightGreen : darkPink;
              Color pointColor =
                  (index == 0 || index == 3) ? darkGreen : darkerPink;
              Color iconColor =
                  (index == 0 || index == 3) ? darkGreen : iconPink;
              String iconString = (index == 0 || index == 3)
                  ? 'assets/gift_green.png'
                  : 'assets/gift_red.png';
              return ListTile(
                  horizontalTitleGap: 0,
                  contentPadding:
                      EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 20),
                  leading: CircleAvatar(
                    backgroundColor: avatarColor,
                    radius: 20,
                    child: ImageIcon(
                      AssetImage(iconString),
                      color: iconColor,
                      size: 27.5,
                    ),
                  ),
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
      ),
    );
  }
}
