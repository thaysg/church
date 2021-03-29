import 'package:church/css/css.dart';
import 'package:church/screens/home/home_components/home_components.dart';
import 'package:flutter/material.dart';
import 'home_components/data/html_data.dart';

VideosFaceStream videosFaceStream = VideosFaceStream();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IGREJA QUADRANGULAR'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_to_queue_rounded,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Text(
                'LIVES',
                style: titulo,
              ),
              HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ),
              HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ),
              HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
