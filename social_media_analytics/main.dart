import 'package:flutter/material.dart';
import 'package:social_media_analytics/screens/accounts_screen.dart';

void main() {
  runApp(SocialMediaAnalytics());
}

class SocialMediaAnalytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Accounts(),
    );
  }
}
