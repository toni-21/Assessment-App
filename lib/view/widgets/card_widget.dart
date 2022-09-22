import 'package:assessment_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/card_background.png'),
                  fit: BoxFit.fill,
                ),
                color: darkBlue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.75),
                    offset: Offset(0.0, 1.0),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Virtual",
                        style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "1234  5678  9012  3456",
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry date",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "12/34",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "123",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 60,
                    width: 72,
                    margin: EdgeInsets.only(top: 75, right: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mastercard.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
