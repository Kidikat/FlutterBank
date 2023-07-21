import 'package:flutter/material.dart';

class MyPlatformContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final IconData click;

  const MyPlatformContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width * 0.42,
      //width: double.infinity,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Icon(
              click,
              size: 40,
            ),
          ],
        ),
      ),
    );
    }}