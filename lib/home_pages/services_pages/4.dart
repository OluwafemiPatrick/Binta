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
          elevation: 0,
          title: Text(
            'Case Management Services',
            style: TextStyle(
              color: colorPrimaryPurple,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          backgroundColor: colorWhite,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 1.0,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                      'lib/shared/assets/images/binta_logo_full_only.png'),
                ),
              ),
              Positioned(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: colorWhite.withOpacity(0.8)),
              ),
              // Positioned.directional(
              //     textDirection: TextDirection.rtl, child: Text('kjsahbfjkhk'))

              Positioned(
                  // top: 200,
                  child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      child: Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              width: 7,
                              color: colorPurpleBright,
                            )),
                        child: Image.asset(
                          'lib/shared/assets/services_images/case_management.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // height: MediaQuery.of(context).size.height * 0.5,
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
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 10.0, 40.0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Binta is serving as the bridge connecting victims to stakeholders having interest in provision of\nGBV case management approach such as facilitating referrals to healthcare and other providers that are permitted to operate, offering emotional support and undertaking enhanced safetyplanning with survivors...to survivor care through an innovative:\n“collaborative, multidisciplinary process which assesses, plans, implements, coordinates, monitors and evaluates options and\nservices to meet any victim’s needs through communication and available resources to promote quality, effective outcomes”.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 10.0, 40.0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                      child: Text(
                                    'Our four approach of case management are based on:\n\n- Individualized service-delivery based on the choices of the survivor.\n\n- Comprehensive assessment to identify the survivor’s needs.\n\n- Participatory development of a service plan that meets survivor’s needs and also developed along with her.\n\n- Good coordination of service delivery',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 10.0, 40.0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                      child: Text(
                                    "Binta efforts to ensure survivors can access support, is to design a system and process through which they can safely request help without their abusers knowing, and that is not dependent on their ability to own a phone. It has been to adapt existing physical safe spaces for women and girls into GBV phone workable station where phone-based case management support can be given.\n\nThis can be the most minimally disruptive and cost-effective solution for both providers and survivors in some settings. The provision of access to innovative alternative solutions unlike the face to face model mostly placed out already, must be found to safely complement hotline/remote services and to expand provision to survivors, who, for whatever reason, cannot access services delivered through the traditional approach known to be done.",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
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
