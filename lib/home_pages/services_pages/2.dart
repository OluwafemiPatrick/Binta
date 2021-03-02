import 'dart:ui';

import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services2 extends StatefulWidget {
  @override
  _Services2State createState() => _Services2State();
}

class _Services2State extends State<Services2> {
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
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('General Counselling Therapy', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
                ),
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 125,
                          width: 125,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 4,
                                color: colorPurpleBright,
                              )),
                          child: Image.asset('assets/images/service_counselling.png',
                            fit: BoxFit.cover),
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
                                    Text(
                                      'Binta stands as lever where victims of GBV can engage stakeholders access Counseling service where they work with the victims dealing with violence including but not limited to:\nearly/forced marriage, female genital cutting, sexual harassment, dowry/bride price abuse, intimate partner/domestic violence, deprivation of inheritance and property, sexual assault and rape that victims experience.\n\nThey are encouraged to take control of their life situations and take responsibility as the means to overcome violence, move toward justice and become responsible citizens.\n\nThe Counselling service involve the following dimensions:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
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
                                        child: Text(
                                      "- SOS Hotline counseling and information offering (usually from 8 h/day to 12 or 24 hours a day). Trained counselors give information and counseling on the phone. It is not only informative, but counseling line.\n\n- Individual counseling sessions (sessions last from 30-50 minutes done by trained counselors).\nCounseling sessions work on emotional, cognitive, and motivational dimensions.\n\n- Phone legal aid: counseling and informing on women’s rights - lawyers give general legal aid on the telephone, and for complex cases setting sessions with practicing lawyers /attorneys.\n\n- Lawyers/attorneys aid: individual legal advice, written documents, court representation for women with no income",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
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
                                        child: Text(
                                      "- Self-help groups: groups of women who survive violence sharing experience in 10-15-20 sessions, facilitated by experienced experts.\n\n- Advise for safe spaces (shelters): women in dangerous situations need safe spaces if such exist in town.\n\n- Specific aid: psychiatric, psychotherapeutic, social work support (this is a scope of aids that during the totalitarian state is indispensable, given that institutions are not friendly and do not function well. Once in a pro-democratic state, these three services should be trained in assisting victims of violence and therefore Counseling team do not need to have them.)\n\n- Written material: leaflets with basic women’s rights information, services, etc. booklets with psycho-education material (wheel of violence, phases of trauma, etc.).",
                                      style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.w500),
                                    ))
                                  ]),
                              ),
                            ]),
                        ),
                      ),
                      // SizedBox(
                      //   height: 60,
                      // ),
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
