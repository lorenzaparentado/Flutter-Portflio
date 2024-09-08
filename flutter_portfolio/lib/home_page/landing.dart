import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';

class Landing extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Landing({required this.screenWidth, required this.screenHeight});

  @override
  _Landing createState() => _Landing();
}

class _Landing extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    double imageWidth = widget.screenWidth >= 1440 ? 434 : widget.screenWidth * 0.3;
    return Container(
      height: responsiveHeight(widget.screenHeight, 729),
      child: Stack(
        children: [
          Positioned(
            top: responsiveHeight(widget.screenHeight, 216),
            left: responsiveWidth(widget.screenWidth, 100),
            child: Text(
              "Lorenz\nAparentado",
              style: headerBiggest(AppColors.darkestBrown),
            ),
          ),
          Positioned(
                bottom: 0,
                left: (widget.screenWidth / 2) - (imageWidth / 2),
                child: Image.asset(
                  'assets/images/lorenz.png',
                  width: imageWidth,
                ),
              ),

          Positioned(
            top: responsiveHeight(widget.screenHeight, 216),
            right: responsiveWidth(widget.screenWidth, 99),
            child: Container(
              child: Text(
                "Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
                style: bodyBig(AppColors.darkestBrown),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
