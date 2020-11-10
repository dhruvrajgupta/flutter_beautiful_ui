import 'package:flutter/material.dart';

class VerifiedTick extends StatelessWidget {
  const VerifiedTick({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 43,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 10,
        child: CircleAvatar(
          child: Icon(
            Icons.check,
            size: 10,
            color: Colors.white,
          ),
          radius: 8,
          backgroundColor: Color(0xFF00AAD1),
        ),
      ),
    );
  }
}
