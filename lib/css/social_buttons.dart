import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData socialIcon;
  final Color socialColors;
  final VoidCallback socialTap;

  const SocialButton({
    Key key,
    this.socialIcon,
    this.socialColors,
    this.socialTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: socialTap,
      icon: Icon(
        socialIcon,
        color: socialColors,
        size: 30,
      ),
    );
  }
}
