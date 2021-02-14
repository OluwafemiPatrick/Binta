import 'dart:ui';

import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services5 extends StatefulWidget {
  @override
  _Services5State createState() => _Services5State();
}

class _Services5State extends State<Services5> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  String _message1 = 'It is the goal of Binta to find real, sustainable solutions to help Africa’s most vulnerable and at-risk.\n'
      '\nA critical approach of providing prevention support is to build a fit-for-purpose technology-based solutions to help victims'
      ' of gender-based violence. It is our belief that the access to the right technology can enable a better and safer way for all '
      'vulnerable to reach people in need for help.\n\nBinta also intend to harmonized required partnerships with developers, NGOs and '
      'law enforcement agency/agents in the gender-based violence space.\n\nBinta is leveraging on both the mobile and internet-technology '
      'based interventions that combine a number of different objectives, from mapping violence to gathering data, using data gathered to '
      'advocate for change and providing survivors with access to essential information and support.';

  String _message2 = 'Most especially bridging the gap of access support from a community of peers, raise awareness of the violence faced by victims,'
      ' use entertainment and social media network, and monitor and evaluate interventions and measure their impact.\n\nAlso, the key priority of Binta'
      ' is to prevent GBV and to stop it from happening in the first place. Some means of ensuring that is happening are as follow:'
      '\n\n- Supporting women’s full participation in civil society in contexts of peace, conflicts and other humanitarian crisis. Women have rights to '
      'participate on equal terms with men in political bodies at all levels of the society, including in peace processes.';

  String _message3 = '- Efforts to increase women’s economic empowerment that enhance women’s bargaining power and ability to leave abusive relationships.'
      ' This includes strengthening women’s entrepreneurship and employment opportunities, improving women’s access to land and property rights, promoting'
      ' equal sharing of unpaid care work between women and men and encouraging universal access to quality education.\n\n- Efforts to increase sexual and '
      'reproductive health and rights are crucial for preventing GBV given the close relationship between the two. Such efforts include promotion and protection'
      ' of women’s right to have control and decide freely over matters related to their sexuality, including sexual and reproductive health, family-planning possibilities and HIV/AIDS prevention.';

  String _message4 = '- Incorporate potential activist either from the angle of perpetrators, victims/survivors as the agents of change to advocate and join to raise their voice'
      ' to kick against gender-based violence.\n\n- Transformation of norms and behavior that underpin GBV. The logic of GBV is based on gender stereotypes, such as ideals linking masculinity '
      'to the provider role, macho behaviour and violence as well as ideals linking femininity to chastity, submission and victim-hood.\n\n Prevention efforts should start early in life and be '
      'directed at girls and boys. Both non-formal education and formal education are important sites for normative change and have the potential to address gender inequalities and prevent GBV.';


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
            title: Text('Prevention and Support', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 1.0,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.2,
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
                            child: Image.asset(
                              'assets/images/service_prevention.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // height: MediaQuery.of(context).size.height * 0.5,
                            child: PageView(
                              clipBehavior: Clip.antiAlias,
                              allowImplicitScrolling: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
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
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Center(
                                          child: Text(_message4, style: TextStyle(
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
