import 'package:church/screens/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff081727),
        scaffoldBackgroundColor: Color(0xff081727),
      ),
      home: NavigationScreen(),
    );
  }
}
