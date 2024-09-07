import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class Landing extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  Landing({required this.screenWidth, required this.screenHeight});

  @override
  _Landing createState() => _Landing();
}

class _Landing extends State<Landing> {
  var idealHeight = 1024;
  var idealWidth = 1440;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight * (729 / idealHeight),
      child: Stack(
        children: [
          Positioned(
            top: widget.screenHeight * (216 / idealHeight),
            left: widget.screenWidth * (100 / idealWidth),
            child: Text(
              "Lorenz\nAparentado",
              style: headerBiggest(AppColors.darkestBrown),
            ),
          ),
          Positioned(
            top: widget.screenHeight * (182 / idealHeight),
            left: (widget.screenWidth / 2) - 207 - 20,
            child: Image.asset('assets/images/lorenzOutline.png'),
          ),
          Positioned(
            top: widget.screenHeight * (162 / idealHeight),
            left: (widget.screenWidth / 2) - 207,
            child: Image.asset('assets/images/lorenz.png'),
          ),
          Positioned(
            top: widget.screenHeight * (216 / idealHeight),
            right: widget.screenWidth * (99 / idealWidth),
            child: Text(
              "Third Year Computer Science Student\nAspiring Software Engineer\nMobile / Fullstack Developer",
              style: bodyBig(AppColors.darkestBrown),
            ),
          ),
        ],
      ),
    );
  }
}
