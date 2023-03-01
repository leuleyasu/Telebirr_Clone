import 'package:flutter/material.dart';

import 'Myaccount.dart';
import 'Promotion.dart';
import 'Telebirr_clone.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  static List<Widget> pages = [
    Telebirr(),
    const Myaccount(),
    const Promotion(),
  ];

  @override
  Widget build(BuildContext context) {
    // double myHeight = 50;
    // double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: pages.elementAt(index),
          bottomNavigationBar: Container(
            height: 80,
            decoration: const BoxDecoration(shape: BoxShape.rectangle),
            child: BottomNavigationBar(
                backgroundColor: Colors.blue[900],
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.blue,
                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                // type: BottomNavigationBarType.fixed,
                currentIndex: index,
                onTap: (value) {
                  setState(() {
                    index = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    // backgroundColor: Colors.white,
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.white,
                      icon: Icon(Icons.phone_android),
                      label: "Promotion"),
                  BottomNavigationBarItem(

                      // backgroundColor: Colors.white,
                      icon: Icon(Icons.person),
                      // label: "Home",
                      label: "My Account"),
                ]),
          )),
    );
  }
}
