import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  final AssetImage picture;
  final String name;

  const HeaderMenu({
    Key key,
    this.picture,
    this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Center(
        child: Row(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: secondaryColor,
              backgroundImage: picture,
            ),
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: titulo,
              ),
            )
          ],
        ),
      ),
    );
  }
}
