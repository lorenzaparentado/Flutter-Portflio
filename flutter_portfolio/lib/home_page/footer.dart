import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';
import '../tools.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey footerKey;

  Footer(
      {required this.footerKey,
      required this.screenWidth,
      required this.screenHeight});

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.darkestBrown,
        child: Padding(
          padding: EdgeInsets.only(
              top: responsiveHeight(widget.screenHeight, 100),
              bottom: responsiveHeight(widget.screenHeight, 50)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Contact Me",
                  key: widget.footerKey,
                  style: headerBig(AppColors.lightTan, context),
                ),
              ]),
              SizedBox(
                height: responsiveHeight(widget.screenHeight, 50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(widget.screenWidth, 320)),
                child: Text(
                    textAlign: TextAlign.center,
                    style: bodyMedium(AppColors.lightTan, context),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis."),
              ),
              SizedBox(
                height: responsiveHeight(widget.screenHeight, 50),
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
                  SizedBox(width: responsiveWidth(widget.screenWidth, 50)),
                  contactButton(
                      "+1 (484) 350-8039", 'assets/images/phoneIcon.png', () {
                    _sendingSMS();
                  }),
                  SizedBox(width: responsiveWidth(widget.screenWidth, 50)),
                  contactButton("laparentado", 'assets/images/linkedinIcon.png',
                      () {
                    _launchURL("https://www.linkedin.com/in/laparentado/");
                  }),
                  SizedBox(width: responsiveWidth(widget.screenWidth, 50)),
                  contactButton(
                      "lorenzaparentado", 'assets/images/githubIcon.png', () {
                    _launchURL("https://www.linkedin.com/in/laparentado/");
                  }),
                ],
              ),
              SizedBox(
                height: responsiveHeight(widget.screenHeight, 50),
              ),
              Divider(
                color: AppColors.mediumGreen,
                thickness: 1,
              ),
              SizedBox(
                height: responsiveHeight(widget.screenHeight, 50),
              ),
              Text(
                "Last Updated Month, Year",
                style: bodySmall(AppColors.lightTan, context),
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
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGreen,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: AppColors.mediumGreen,
                offset: Offset(-8, 8),
                blurRadius: 0,
                blurStyle: BlurStyle.solid),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: responsiveHeight(widget.screenHeight, 15),
              horizontal: responsiveWidth(widget.screenWidth, 15)),
          child: Row(
            children: [
              Image.asset(icon),
              SizedBox(
                width: responsiveWidth(widget.screenWidth, 10),
              ),
              Text(
                text,
                style: bodyMedium(AppColors.darkestBrown, context),
              )
            ],
          ),
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
}
