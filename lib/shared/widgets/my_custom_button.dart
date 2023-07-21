import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final double paddingWidth;
  final IconData icon;
  final String title;
  final bool hasBackground;

  const MyCustomButton({
    Key? key,
    required this.paddingWidth,
    required this.icon,
    required this.title,
    required this.hasBackground
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
        color: hasBackground ? Color(0xFF00213D) : Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: paddingWidth),
        child: Column(
          children: [
            Icon(
              icon,
              size: 30,
              color: hasBackground ? Colors.white :Color(0xFF00213D),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19,
                color: hasBackground ? Colors.white : Color(0xFF00213D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
