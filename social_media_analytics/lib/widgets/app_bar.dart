import 'package:flutter/material.dart';
import 'package:social_media_analytics/constants.dart';

class SMAAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferredHeight = 80.0;
  final String title;

  SMAAppBar({this.title}) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: glassBlue,
      height: _preferredHeight,
      padding: EdgeInsets.only(
        left: 30,
        top: 10,
        right: 30,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
              letterSpacing: 1,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
            ),
          ),
          CircleAvatar(
            child: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            backgroundColor: Colors.white70,
            radius: 20,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}
