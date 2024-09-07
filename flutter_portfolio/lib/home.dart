import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  static Color brown1 = Color(0xFF251B15);
  static Color tan1 = Color(0xFFECEAE1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tan1,
      body: Column(
        children: [
          header(context),
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    TextStyle headerButtons = TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 24 / 24,
        letterSpacing: 0.01 * 24,
        color: brown1);

    return Container(
      height: 117,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "About Me",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 75),
              child: TextButton(
                child: Text(
                  "Work",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Text(
              "Lorenz",
              style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  height: 42 / 40,
                  letterSpacing: 0.015 * 40,
                  color: brown1),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Projects",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75),
              child: TextButton(
                child: Text(
                  "Contact",
                  style: headerButtons,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
