import 'package:flutter/material.dart';

class MyOPEButton extends StatelessWidget {
  final double paddingWidth;
  final String title;

  const MyOPEButton({
    Key? key,
    required this.paddingWidth,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: paddingWidth),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Container(
              height: 30,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 348,
                      height: 10,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA30505),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 163,
                      height: 10,
                      decoration: ShapeDecoration(
                        color: Color(0xFFECC700),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 72,
                    top: 0,
                    child: Container(
                      width: 85,
                      height: 10,
                      decoration: BoxDecoration(color: Color(0xFF00A510)),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 0,
                    child: Container(
                      width: 45,
                      height: 10,
                      decoration: BoxDecoration(color: Color(0xFF0245C7)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}