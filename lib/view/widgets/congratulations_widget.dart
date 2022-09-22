import 'package:assessment_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CongratulationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          child: Column(
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
        ),
        Spacer(),
        Container(
          height: 75,
          width: 85,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/celebration.png'), fit: BoxFit.cover),
          ),
        )
      ]),
    );
  }
}
