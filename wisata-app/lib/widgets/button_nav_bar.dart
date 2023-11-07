import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wisata_app/utils/contants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Home",
            svgScr: "assets/icons/home.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: "Chat",
            svgScr: "assets/icons/chat.svg",
          ),
          BottomNavItem(
            title: "Settings",
            svgScr: "assets/icons/settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final VoidCallback? press;
  final bool isActive;
  const BottomNavItem({
    super.key,
    required this.svgScr,
    required this.title,
    this.press,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press ?? () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgScr,
              color: isActive ? primaryColor : textDarkColor, height: 32, width: 32, fit: BoxFit.scaleDown),
          Text(
            title,
            style: TextStyle(color: isActive ? primaryColor : textDarkColor),
          ),
        ],
      ),
    );
  }
}
