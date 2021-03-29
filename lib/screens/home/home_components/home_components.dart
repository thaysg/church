import 'package:church/css/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomeComponents extends StatelessWidget {
  final String videoLink;

  const HomeComponents({Key key, this.videoLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .27,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      color: secondaryColor,
      child: HtmlWidget(
        videoLink,
        webView: true,
      ),
      /*  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HtmlWidget(
            videoLink,
            webView: true,
          ),
          /* Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SocialButton(
                  // socialIcon: Icons.share,
                  socialColors: Colors.white,

                  /// socialTap: () {},
                )
              ],
            ),
          ) */
        ],
      ), */
    );
  }
}
