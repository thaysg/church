import 'package:church/screens/agenda/agenda.dart';
import 'package:church/screens/home/home.dart';
import 'package:church/screens/more/my_menu.dart';
import 'package:church/screens/verses/verses_screen.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          AgendaScreen(),
          VerseScreen(),
          MyMenu(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.home_outlined,
            title: "Home",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.calendar_today,
            title: "Agenda",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.book_outlined,
            title: "Promessa Bíblica",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.menu,
            title: "Mais",
          ),
        ],
        onTap: (index) {
          _pageController.animateToPage(index,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 600));
        },
      ),
    );
  }
}
