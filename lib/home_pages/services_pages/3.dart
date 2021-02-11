import 'dart:ui';

import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services3 extends StatefulWidget {
  @override
  _Services3State createState() => _Services3State();
}

class _Services3State extends State<Services3> {
  final int _numPages = 2;
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
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sexual and Reproductive\nHealth Rights',
                    style: TextStyle(
                      color: colorPrimaryPurple,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
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
                      padding: const EdgeInsets.all(16.0),
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
                          'lib/shared/assets/services_images/3-38956_sexual-reproductive-health-and-rights-hd-png-download.png',
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
                                    'Good sexual and reproductive health is a state of complete physical, mental and social well-being in all matters relating to the reproductive system. It implies that people are able to have a satisfying and safe sex life, the capability to reproduce, and the freedom to decide if, when, and how often to do so.\n\nTo maintain one’s sexual and reproductive health, people need access to accurate information and the safe, effective, affordable and acceptable contraception method of their choice. They must be informed and empowered to protect themselves from sexually transmitted infections.',
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
                                  Text(
                                    'And when they decide to have children, women must have access to services that can help them have a fit pregnancy, safe delivery and healthy baby.\n\nEvery individual has the right to make their own choices about their sexual and reproductive health. Binta works together with a wide range of partners to connect people in need, in an effort achieve the goal of universal access to sexual and reproductive health and rights, including family planning.',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
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
