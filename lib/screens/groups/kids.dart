import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class KidsScren extends StatefulWidget {
  @override
  _KidsScrenState createState() => _KidsScrenState();
}

class _KidsScrenState extends State<KidsScren> {
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
