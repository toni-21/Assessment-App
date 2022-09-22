import 'package:assessment_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './dashboard.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<StatefulWidget> {
  int selectedIndex = 0;

  List<Widget> pages = <Widget>[
    Dashboard(),
    Dashboard(),
    Dashboard(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(index: selectedIndex, children: pages),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedItemColor: darkBlue,
                unselectedItemColor: lightGray,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_rounded), label: 'Home'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.wallet),
                    label: 'Payment',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.creditcard),
                    label: 'Cards',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined),
                    label: 'Settings',
                  ),
                ]),
          ),
        ));
  }
}
