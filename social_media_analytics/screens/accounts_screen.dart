import 'package:flutter/material.dart';
import 'package:social_media_analytics/models/account.dart';
import 'package:social_media_analytics/widgets/account_widget.dart';
import 'package:social_media_analytics/widgets/app_bar.dart';

import '../constants.dart';

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SMAAppBar(
          title: 'Accounts',
        ),
        backgroundColor: glassBlue,
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white38,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) => AccountWidget(
              name: Account.accountsList[index].name,
              imageLocation: Account.accountsList[index].imageLocation,
              verified: Account.accountsList[index].verified,
            ),
            itemCount: Account.accountsList.length,
            padding: EdgeInsets.only(bottom: 20),
          ),
        ),
        bottomNavigationBar: SMABottomNavBar(),
      ),
    );
  }
}

class SMABottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
    );
  }
}
