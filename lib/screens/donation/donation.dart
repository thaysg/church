import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Diantion",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
