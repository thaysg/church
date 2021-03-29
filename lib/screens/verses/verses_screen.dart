import 'dart:math';

import 'package:church/screens/verses/components/data.dart';
import 'package:church/screens/verses/components/verse_component.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';

RandomColor _randomColor = RandomColor();

class VerseScreen extends StatefulWidget {
  @override
  _VerseScreenState createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {
  final _screenshotController = ScreenshotController();

  String verseButton = '';
  int versiculoSorteado;
  Color _color = _randomColor.randomColor();

  void gerarVersiculo() {
    var versiculoSorteado = Random().nextInt(versiculos.length);
    _color = _randomColor.randomColor(
      colorBrightness: ColorBrightness.dark,
      colorSaturation: ColorSaturation.lowSaturation,
    );
    setState(() {
      verseButton = versiculos[versiculoSorteado];
    });
  }

  @override
  void initState() {
    super.initState();
    gerarVersiculo();
  }

  void _takeScreenshot() async {
    final imageFile = await _screenshotController.capture();
    Share.shareFiles(
      [imageFile.path],
      text: "Compartilhado por TG CODE",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PROMESSAS PRECIOSAS'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                _takeScreenshot();
              },
            ),
          ],
        ),
        body: Screenshot(
          controller: _screenshotController,
          child: VerseComponent(
            onTap: () {
              gerarVersiculo();
            },
            title: verseButton,
            colour: _color,
          ),
        ));
  }
}
