import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class WonenGroup extends StatefulWidget {
  @override
  _WonenGroupState createState() => _WonenGroupState();
}

class _WonenGroupState extends State<WonenGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Men',
          style: titulo,
        ),
      ),
    );
  }
}
