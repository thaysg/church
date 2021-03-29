import 'package:church/css/css.dart';
import 'package:church/screens/more/menu_components/header_drawer.dart';
import 'package:church/screens/more/menu_components/my_drawer.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .8,
            color: secondaryColor,
            child: Column(
              children: [
                Expanded(
                  child: HeaderMenu(
                    picture: AssetImage(
                      'images/man.png',
                    ),
                    name: 'Pastor \nFrancisco',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MyDrawer(),
                ),
              ],
            ),
          )),
    );
  }
}
