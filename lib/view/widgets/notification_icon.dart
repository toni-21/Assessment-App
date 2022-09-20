import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final Function? onTap;
  const NotificationWidget({this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
          constraints: BoxConstraints.tight(Size(20, 24)),
          icon: Icon(Icons.notifications_none_outlined),
          padding: EdgeInsets.all(0),
          alignment: Alignment.bottomCenter,
          onPressed: onTap!() ?? () {},
        ),
        _redDot(),
      ],
    );
  }

  Widget _redDot() {
    return Positioned(
      left: 12,
      top: 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(7),
        ),
        constraints: BoxConstraints(
          minWidth: 7,
          minHeight: 7,
        ),
        child: Container(
          width: 1,
          height: 1,
        ),
      ),
    );
  }
}
