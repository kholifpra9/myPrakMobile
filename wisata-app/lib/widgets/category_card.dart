import 'package:flutter/material.dart';
import 'package:wisata_app/constants.dart';

class CategoryCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final VoidCallback press;
  const CategoryCard({
    super.key,
    required this.imgSrc,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
            color: shadowColor.withOpacity(0.2),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.2), // Border color
          width: 1.0, // Border width
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  imgSrc,
                  height: 100,
                ),
                const SizedBox(height: 8.0),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
