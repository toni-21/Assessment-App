import 'package:flutter/material.dart';
import 'package:assessment_app/utils/styles.dart';
import 'package:assessment_app/view/widgets/card_widget.dart';
import 'package:assessment_app/view/widgets/congratulations_widget.dart';
import 'package:assessment_app/view/widgets/topclip_widget.dart';
import 'package:assessment_app/view/widgets/transactions_widget.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      extendBody: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TopclipWidget(),
              CongratulationsWidget(),
              CardWidget(),
              TransactionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
