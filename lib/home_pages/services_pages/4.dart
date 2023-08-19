import 'dart:ui';

import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services4 extends StatefulWidget {
  @override
  _Services4State createState() => _Services4State();
}

class _Services4State extends State<Services4> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  String _message1 = "Binta is serving as the bridge connecting victims to stakeholders having interest in provision "
      "of GBV case management approach such as facilitating referrals to health care and other providers that are permitted to"
      " operate, offering emotional support and undertaking enhanced safety planning with survivors...\n\nto survivor care through an "
      "'innovative, collaborative, multidisciplinary process which assesses, plans, implements, coordinates, monitors and evaluates "
      "options and services to meet any victim’s needs through communication and available resources to promote quality, effective outcomes'.";
  String _message2 = "Our four approach of case management are based on: \n\n - Individualized service-delivery based on the choices of the survivor."
      "\n\n - Comprehensive assessment to identify the survivor’s needs.\n\n - Participatory development of a service plan that meets survivor’s needs"
      " and also developed along with her. \n\n - Good coordination of service delivery";
  String _message3 = "Binta efforts to ensure survivors can access support is to design a system and process through which they can safely request help "
      "without their abusers knowledge, and that is not dependent on their ability to own a phone. \n\nIt has been to adapt existing physical safe spaces for"
      " women and girls into GBV phone workable station where phone-based case management support can be given.\n\n This can be the most minimally disruptive"
      " and cost-effective solution for both providers and survivors in some settings. \n\nThe provision of access to innovative alternative solutions unlike "
      "the face to face model mostly placed out already, must be found to safely complement hotline/remote services and to expand provision to survivors, who,"
      " for whatever reason, cannot access services delivered through the traditional approach known to be done.";

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? colorPrimaryPurple : colorFacebook,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Case Management Services', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 1.0,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
                ),
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0 ),
                        child: Container(
                          height: 125,
                          width: 125,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 4,
                                color: colorPurpleBright,
                              )),
                          child: Image.asset(
                            'assets/images/service_case_management.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: PageView(
                            physics: ClampingScrollPhysics(),
                            controller: _pageController,
                            onPageChanged: (int page) {
                              setState(() {
                                _currentPage = page;
                              });
                            },
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(_message1, style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                        child: Text(_message2, style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500),
                                    ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                        child: Text(_message3, style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500),
                                    ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(),
                        ),
                      )
                    ],
                  ),
              ))
            ],
          ),
        ));
  }
}
