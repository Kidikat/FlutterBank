import 'package:flutter/material.dart';

class MyDonneeContainer extends StatelessWidget {
  final double paddingWidth;
  final IconData icon;
  final String title;

  const MyDonneeContainer({
    Key? key,
    required this.paddingWidth,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: paddingWidth),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(width: 8), // Add some space between the icon and the text
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}