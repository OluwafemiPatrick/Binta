import 'dart:ui';

import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services1 extends StatefulWidget {
  @override
  _Services1State createState() => _Services1State();
}

class _Services1State extends State<Services1> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  String _message = "There are numbers of tangled issues and problems that result from GBV "
      "in our families and in our communities.\n\nSome of these problems are caused by or "
      "made worse by policies, laws andpractices that are in place, or by the fact that good"
      " existing policies, laws and practices are not implemented.\n\nSuch problems and issues"
      " can be solved with the help of influential people or organizations.\n\nThis is why we do advocacy";
  String _message2 = "We carry out activities that kick against GBV and plead as well as argue in favor of"
      " happy families,peaceful communities, and a balance of power between men and women.\n\nOur approach is"
      " not necessarily confrontational, we are working together with local authorities and policy makers, "
      "in order to create communities that are more peaceful and productive.\n\nBinta ultimate aims of "
      "advocacy are to:\n\n - create policies.\n - reform policies.\n - ensure that policies are implemented."
      "\n\nAlso, we promote the spirit of activism and advocacy to solve problems and issues resulting from GBV"
      " in the following ways:";

  String _message3 = "❖ Allocate resources – money, staff, material\n❖ Determine priorities, set agendas"
      "\n❖ Create laws and policies\n❖ Change laws and policies\n❖ Enforce laws and policies\n❖ Prosecute crimes"
      "\n❖ Influence people's behaviour\n❖ Call meetings\n❖ Introduce you to other important people"
      "\n❖ Support programs and monitor activities\n❖ Improve service delivery\n❖ Mediate conflict"
      "\n❖ Encourage people to access services\n❖ Ensure/respect human rights\n❖ Protect GBV survivors from further abuse"
      "\n❖ Encourage people to speak openly about gender, power and GBV\n❖ Support community members to challenge their social norms";


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
            title: Text('Advocacy', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 1.0,),
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
              Container(
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
                            border: Border.all(width: 4,
                              color: colorPurpleBright,
                            )),
                        child: Image.asset('assets/images/serrice_advocacy.png',
                          fit: BoxFit.cover,),
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        allowImplicitScrolling: true,
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
                                Text(_message, style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
