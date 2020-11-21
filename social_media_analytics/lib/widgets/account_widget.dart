import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'verified_tick.dart';

class AccountWidget extends StatelessWidget {
  final String name;
  final String imageLocation;
  final bool verified;

  AccountWidget({this.name, this.imageLocation, this.verified});

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      padding: EdgeInsets.only(top: 20, bottom: 0, left: 20, right: 20),
      child: Row(
        children: [
          Container(
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            height: 60,
            width: 65,
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/$imageLocation'),
                  radius: 30,
                ),
                verified ? VerifiedTick() : Container(),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '11.5k Followers',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  letterSpacing: 1,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
