import 'package:flutter/material.dart';

class MyOpeContainer extends StatelessWidget {
  final double paddingWidth;
  final IconData icon;
  final String title;
  const MyOpeContainer({
    Key? key,
    required this.paddingWidth,
    required this.icon,
    required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 250,
          color: Color(0xFF00213D),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                width: 50,
                height: 30,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 30,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 30,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 150,
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
                        width: 63,
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
                      left: 63,
                      top: 0,
                      child: Container(
                        width: 36,
                        height: 10,
                        decoration: BoxDecoration(color: Color(0xFF00A510)),
                      ),
                    ),
                    Positioned(
                      left: 99,
                      top: 0,
                      child: Container(
                        width: 21,
                        height: 10,
                        decoration: BoxDecoration(color: Color(0xFF0245C7)),
                      ),
                    ),
                  ],
                ),
              ),
            ], // Removed the comma here
          ),
        ),
      ],
    );
  }
}