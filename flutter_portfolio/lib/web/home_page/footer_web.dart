import 'dart:html' as html;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
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
                  AppStrings.contactMe,
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
                    AppStrings.contactDescription),
              ),
              SizedBox(
                height: responsiveWebHeight(widget.screenHeight, 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  contactButton(AppStrings.email, 'assets/images/mailIcon.png',
                      () {
                    launchEmail(
                      toEmail: AppStrings.email,
                      subject: AppStrings.emailSubject,
                      body: AppStrings.emailBody,
                    );
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton(
                      AppStrings.phoneNumber, 'assets/images/phoneIcon.png',
                      () {
                    if (isWindows()) {
                      showAlert(
                          context, AppStrings.alert, AppStrings.smsWindows);
                    } else {
                      _sendingSMS();
                    }
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton(
                      AppStrings.linkedIn, 'assets/images/linkedinIcon.png',
                      () {
                    _launchURL(AppStrings.linkedInLink);
                  }),
                  SizedBox(width: responsiveWebWidth(widget.screenWidth, 50)),
                  contactButton(
                      AppStrings.gitHub, 'assets/images/githubIcon.png', () {
                    _launchURL(AppStrings.gitHubLink);
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
                AppStrings.websiteUpdated,
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
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
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
              child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(AppStrings.ok,
                      style: bodyMediumWeb(AppColors.lightTan, context))),
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
