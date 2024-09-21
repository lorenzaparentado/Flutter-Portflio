import 'dart:math';
import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common_widgets.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../tools.dart';

class DrawerMobile extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final VoidCallback onClose;
  final Function(GlobalKey) scrollToSection;
  final GlobalKey aboutMeKey;
  final GlobalKey workKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  DrawerMobile({
    required this.screenWidth,
    required this.screenHeight,
    required this.onClose,
    required this.scrollToSection,
    required this.aboutMeKey,
    required this.workKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  _DrawerMobile createState() => _DrawerMobile();
}

class _DrawerMobile extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: responsiveMobileHeight(widget.screenHeight, 30),
          horizontal: responsiveMobileWidth(widget.screenWidth, 23)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppStrings.headerFullName,
                style: headerMediumMobile(AppColors.darkestBrown, context),
              ),
              SizedBox(width: responsiveMobileWidth(widget.screenWidth, 14)),
              InkWell(
                  onTap: () {
                    widget.onClose();
                  },
                  child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: SvgPicture.asset(
                        'assets/images/close.svg',
                        width: responsiveMobileWidth(widget.screenWidth, 35),
                      )))
            ],
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 29),
          ),
          InkWell(
            onTap: () {
              widget.onClose();
              widget.scrollToSection(widget.aboutMeKey);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomContainer(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: responsiveMobileHeight(widget.screenHeight, 15),
                  ),
                  child: Text(AppStrings.aboutMe,
                      style: headerMediumMobile(AppColors.lightTan, context)),
                )),
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                    responsiveMobileWidth(widget.screenWidth, 4)),
                borderRadius: 10,
              ),
            ),
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 25),
          ),
          InkWell(
            onTap: () {
              widget.onClose();
              widget.scrollToSection(widget.workKey);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomContainer(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: responsiveMobileHeight(widget.screenHeight, 15),
                  ),
                  child: Text(AppStrings.work,
                      style: headerMediumMobile(AppColors.lightTan, context)),
                )),
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                    responsiveMobileWidth(widget.screenWidth, 4)),
                borderRadius: 10,
              ),
            ),
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 25),
          ),
          InkWell(
            onTap: () {
              widget.onClose();
              widget.scrollToSection(widget.projectsKey);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomContainer(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: responsiveMobileHeight(widget.screenHeight, 15),
                  ),
                  child: Text(AppStrings.projects,
                      style: headerMediumMobile(AppColors.lightTan, context)),
                )),
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                    responsiveMobileWidth(widget.screenWidth, 4)),
                borderRadius: 10,
              ),
            ),
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 25),
          ),
          InkWell(
            onTap: () {
              widget.onClose();
              widget.scrollToSection(widget.contactKey);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomContainer(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: responsiveMobileHeight(widget.screenHeight, 15),
                  ),
                  child: Text(AppStrings.contactMe,
                      style: headerMediumMobile(AppColors.lightTan, context)),
                )),
                boxColor: AppColors.mediumGreen,
                boxShadowColor: AppColors.shadowGreen,
                offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                    responsiveMobileWidth(widget.screenWidth, 4)),
                borderRadius: 10,
              ),
            ),
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 28),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  launchEmail(
                    toEmail: AppStrings.email,
                    subject: AppStrings.emailSubject,
                    body: AppStrings.emailBody,
                  );
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: CustomContainer(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              responsiveMobileHeight(widget.screenHeight, 14),
                          horizontal:
                              responsiveMobileWidth(widget.screenWidth, 10)),
                      child: Image.asset(
                        "assets/images/mailIcon.png",
                        color: AppColors.lightTan,
                        height: responsiveMobileHeight(widget.screenHeight, 22),
                      ),
                    )),
                    boxColor: AppColors.mediumGreen,
                    boxShadowColor: AppColors.shadowGreen,
                    offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                        responsiveMobileWidth(widget.screenWidth, 4)),
                    borderRadius: 10,
                  ),
                ),
              ),
              SizedBox(
                width: responsiveMobileWidth(widget.screenWidth, 25),
              ),
              InkWell(
                onTap: () {
                  if (isWindows()) {
                    showAlert(context, AppStrings.alert, AppStrings.smsWindows);
                  } else {
                    _sendingSMS();
                  }
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: CustomContainer(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              responsiveMobileHeight(widget.screenHeight, 14),
                          horizontal:
                              responsiveMobileWidth(widget.screenWidth, 14)),
                      child: Image.asset(
                        "assets/images/phoneIcon.png",
                        color: AppColors.lightTan,
                        height: responsiveMobileHeight(widget.screenHeight, 22),
                      ),
                    )),
                    boxColor: AppColors.mediumGreen,
                    boxShadowColor: AppColors.shadowGreen,
                    offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                        responsiveMobileWidth(widget.screenWidth, 4)),
                    borderRadius: 10,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: responsiveMobileHeight(widget.screenHeight, 28),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _launchURL(AppStrings.linkedInLink);
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: CustomContainer(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              responsiveMobileHeight(widget.screenHeight, 14),
                          horizontal:
                              responsiveMobileWidth(widget.screenWidth, 14)),
                      child: Image.asset(
                        "assets/images/linkedinIcon.png",
                        color: AppColors.lightTan,
                        height: responsiveMobileHeight(widget.screenHeight, 22),
                      ),
                    )),
                    boxColor: AppColors.mediumGreen,
                    boxShadowColor: AppColors.shadowGreen,
                    offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                        responsiveMobileWidth(widget.screenWidth, 4)),
                    borderRadius: 10,
                  ),
                ),
              ),
              SizedBox(
                width: responsiveMobileWidth(widget.screenWidth, 25),
              ),
              InkWell(
                onTap: () {
                  _launchURL(AppStrings.gitHubLink);
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: CustomContainer(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              responsiveMobileHeight(widget.screenHeight, 14),
                          horizontal:
                              responsiveMobileWidth(widget.screenWidth, 14)),
                      child: Image.asset(
                        "assets/images/githubIcon.png",
                        color: AppColors.lightTan,
                        height: responsiveMobileHeight(widget.screenHeight, 22),
                      ),
                    )),
                    boxColor: AppColors.mediumGreen,
                    boxShadowColor: AppColors.shadowGreen,
                    offset: min(responsiveMobileHeight(widget.screenHeight, 4),
                        responsiveMobileWidth(widget.screenWidth, 4)),
                    borderRadius: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
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
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: AlertDialog(
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
                child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(AppStrings.ok,
                        style: bodyMobile(AppColors.lightTan, context))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
