import 'dart:html' as html;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWeb extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey footerKey;

  FooterWeb(
      {required this.footerKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _FooterWeb createState() => _FooterWeb();
}

class _FooterWeb extends State<FooterWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.only(
              top: responsiveWebHeight(widget.screenHeight, 100),
              bottom: responsiveWebHeight(widget.screenHeight, 50)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Contact Me",
                  key: widget.footerKey,
                  style: headerBigWeb(AppColors.lightTan, context),
                ),
              ]),
              SizedBox(
                height: responsiveWebHeight(widget.screenHeight, 50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: responsiveWebWidth(widget.screenWidth, 320)),
                child: Text(
                    textAlign: TextAlign.center,
                    style: bodyMediumWeb(AppColors.lightTan, context),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis."),
              ),
              SizedBox(
                height: responsiveWebHeight(widget.screenHeight, 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  contactButton("lorenzaparentado@gmail.com",
                      'assets/images/mailIcon.png', () {
                    launchEmail(
                      toEmail: 'lorenzaparentado@gmail.com',
                      subject: 'From Portfolio:',
                      body: 'Write me a message!',
                    );
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton(
                      "+1 (484) 350-8039", 'assets/images/phoneIcon.png', () {
                    if (isWindows()) {
                      showAlert(context, 'Alert',
                          'Cannot perform SMS functions on Windows!');
                    } else {
                      _sendingSMS();
                    }
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton("laparentado", 'assets/images/linkedinIcon.png',
                      () {
                    _launchURL("https://www.linkedin.com/in/laparentado");
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton(
                      "lorenzaparentado", 'assets/images/githubIcon.png', () {
                    _launchURL("https://github.com/lorenzaparentado");
                  }),
                ],
              ),
              SizedBox(
                height: responsiveWebHeight(widget.screenHeight, 50),
              ),
              Divider(
                color: AppColors.mediumGreen,
                thickness: 1,
              ),
              SizedBox(
                height: responsiveWebHeight(widget.screenHeight, 50),
              ),
              Text(
                "Last Updated Month, Year",
                style: bodySmallWeb(AppColors.lightTan, context),
              )
            ],
          ),
        ));
  }

  Widget contactButton(String text, String icon, Function onPress) {
    return InkWell(
      onTap: () async {
        onPress();
      },
      child: CustomContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: responsiveWebHeight(widget.screenHeight, 15),
              horizontal: responsiveWebWidth(widget.screenWidth, 15)),
          child: Row(
            children: [
              Image.asset(icon),
              SizedBox(
                width: responsiveWebWidth(widget.screenWidth, 10),
              ),
              Text(
                text,
                style: bodyMediumWeb(AppColors.darkestBrown, context),
              )
            ],
          ),
        ),
        boxColor: AppColors.lightGreen,
        boxShadowColor: AppColors.mediumGreen,
        offset: min(responsiveWebHeight(widget.screenHeight, 8),
            responsiveWebWidth(widget.screenWidth, 8)),
        borderRadius: 15,
      ),
    );
  }

  void launchEmail(
      {required String toEmail,
      required String subject,
      required String body}) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query:
          'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
    );

    if (await canLaunch(emailUri.toString())) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  void _sendingSMS() async {
    var url = Uri.parse("sms:4843508039");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool isWindows() {
    return html.window.navigator.platform?.toLowerCase().contains('win') ??
        false;
  }

  void showAlert(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 50,
          backgroundColor: AppColors.mediumGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Text(
            title,
            style: headerSmallWeb(AppColors.lightTan, context),
          ),
          content: Text(
            content,
            style: bodyMediumWeb(AppColors.lightTan, context),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK', style: bodyMediumWeb(AppColors.lightTan, context)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
