import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class MenGroup extends StatefulWidget {
  @override
  _MenGroupState createState() => _MenGroupState();
}

class _MenGroupState extends State<MenGroup> {
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
