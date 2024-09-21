import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/bloc/drawer_bloc.dart';
import 'package:flutter_portfolio/mobile/home_page/about_me_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/drawer_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/footer_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/header_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/landing_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/projects_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/stats_mobile.dart';
import 'package:flutter_portfolio/mobile/home_page/work_mobile.dart';
import 'package:flutter_portfolio/strings.dart';
import 'package:flutter_portfolio/styles/text_style_mobile.dart';
import '../../styles/app_colors.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageMobile();
}

class _HomePageMobile extends State<HomePageMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _landingMobileKey = GlobalKey();
  final GlobalKey _aboutMeMobileKey = GlobalKey();
  final GlobalKey _workMobileKey = GlobalKey();
  final GlobalKey _projectsMobileKey = GlobalKey();
  final GlobalKey _contactMobileKey = GlobalKey();
  late DrawerBloc drawerBloc;

  @override
  void initState() {
    super.initState();
    drawerBloc = DrawerBloc();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog(context, AppStrings.welcome, AppStrings.wip);
    });
  }

  void _showDialog(BuildContext context, String title, String content) {
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
              child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(AppStrings.ok,
                      style: bodyMobile(AppColors.lightTan, context))),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: ElasticOutCurve(1),
        alignment: .2,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.lightTan,
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                LandingMobile(
                    landingKey: _landingMobileKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                StatsMobile(
                    screenWidth: screenWidth, screenHeight: screenHeight),
                AboutMeMobile(
                    aboutKey: _aboutMeMobileKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                WorkMobile(
                    workKey: _workMobileKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                ProjectsMobile(
                    projectsKey: _projectsMobileKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                FooterMobile(
                    footerKey: _contactMobileKey,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight)
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeaderMobile(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onHeaderPress: openDrawer,
              scrollToSection: _scrollToSection,
              landingKey: _landingMobileKey,
            ),
          ),
          BlocProvider(
            create: (context) => drawerBloc,
            child: BlocConsumer<DrawerBloc, DrawerState>(
                listener: (context, state) => state.maybeWhen(orElse: () {}),
                buildWhen: (previousState, currentState) {
                  return currentState is Opened || currentState is Closed;
                },
                builder: (context, state) => state.maybeWhen(
                      opened: () {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: const SizedBox.expand(),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                    )),
          ),
        ]),
        endDrawer: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
            clipBehavior: Clip.hardEdge,
            width: 2 * screenWidth / 3,
            backgroundColor: AppColors.lightTan,
            child: DrawerMobile(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onClose: closeDrawer,
              scrollToSection: _scrollToSection,
              aboutMeKey: _aboutMeMobileKey,
              workKey: _workMobileKey,
              projectsKey: _projectsMobileKey,
              contactKey: _contactMobileKey,
            )),
        onEndDrawerChanged: (isOpen) {
          if (!isOpen) {
            drawerBloc.add(DrawerEvent.close());
          }
        });
  }

  void openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
    drawerBloc.add(DrawerEvent.open());
  }

  void closeDrawer() {
    _scaffoldKey.currentState?.closeEndDrawer();
    drawerBloc.add(DrawerEvent.close());
  }
}
