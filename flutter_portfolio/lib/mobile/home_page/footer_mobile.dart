import 'dart:html' as html;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles_web.dart';
import '../../tools.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  FooterMobile({required this.screenWidth, required this.screenHeight});

  @override
  _FooterMobile createState() => _FooterMobile();
}

class _FooterMobile extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: responsiveMobileHeight(widget.screenHeight, 20),
              horizontal: responsiveMobileWidth(widget.screenWidth, 24)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Contact Me",
                  style: headerBigMobile(AppColors.lightTan, context),
                ),
              ]),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              Text(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: bodyMobile(AppColors.lightTan, context),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              contactButton(
                  "lorenzaparentado@gmail.com", 'assets/images/mailIcon.png',
                  () {
                launchEmail(
                  toEmail: 'lorenzaparentado@gmail.com',
                  subject: 'From Portfolio:',
                  body: 'Write me a message!',
                );
              }),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              contactButton("+1 (484) 350-8039", 'assets/images/phoneIcon.png',
                  () {
                if (isWindows()) {
                  showAlert(context, 'Alert',
                      'Cannot perform SMS functions on Windows!');
                } else {
                  _sendingSMS();
                }
              }),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              contactButton("laparentado", 'assets/images/linkedinIcon.png',
                  () {
                _launchURL("https://www.linkedin.com/in/laparentado");
              }),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              contactButton("lorenzaparentado", 'assets/images/githubIcon.png',
                  () {
                _launchURL("https://github.com/lorenzaparentado");
              }),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              Divider(
                color: AppColors.mediumGreen,
                thickness: 1,
              ),
              SizedBox(
                height: responsiveMobileHeight(widget.screenHeight, 10),
              ),
              Text(
                "Last Updated Month, Year",
                style: bodyMobile(AppColors.lightTan, context),
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
              vertical: responsiveMobileHeight(widget.screenHeight, 10),
              horizontal: responsiveMobileWidth(widget.screenWidth, 10)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(icon, height: responsiveMobileHeight(widget.screenHeight, 20),),
              SizedBox(
                width: responsiveMobileWidth(widget.screenWidth, 5),
              ),
              Text(
                text,
                style: bodySmallMobile(AppColors.darkestBrown, context),
              )
            ],
          ),
        ),
        boxColor: AppColors.lightGreen,
        boxShadowColor: AppColors.mediumGreen,
        offset: min(responsiveMobileHeight(widget.screenHeight, 2),
            responsiveMobileWidth(widget.screenWidth, 2)),
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
            style: headerBigMobile(AppColors.lightTan, context),
          ),
          content: Text(
            content,
            style: bodyMobile(AppColors.lightTan, context),
          ),
          actions: <Widget>[
            TextButton(
              child:
                  Text('OK', style: bodyMobile(AppColors.lightTan, context)),
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
