import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key, required this.selectedIndex}) : super(key: key);
  int selectedIndex;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 50,
            color: Colors.white.withOpacity(.2),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.blue[300]!,
            hoverColor: Colors.blue[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.blue,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                textColor: Colors.white,
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.interests,
                text: 'Likes',
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.bookmark,
                text: 'Saved',
                textColor: Colors.white,
                iconActiveColor: Colors.white,
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                textColor: Colors.white,
                iconActiveColor: Colors.white,
              ),
            ],
            selectedIndex: widget.selectedIndex,
            onTabChange: (index) {
              setState(() {
                widget.selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
