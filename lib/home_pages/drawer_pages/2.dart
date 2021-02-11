import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Drawer2 extends StatefulWidget {
  @override
  _Drawer2State createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'About the initiative',
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
      body: Stack(
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
          Positioned(
              // top: 200,
              child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Vision',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '\nPutting an End to Silence of Gender\nBased Violence in the Society\n',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Mission',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '\nTo put make the world a better place by putting smile on victims of Abuse resulting from\nGender Based Violence through four focused actions by awareness creation, collaboration of partnerships, strengthening the belief system and fostering a community sense of responsibilities\nand wellness.\n',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'Objectives',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '\n- To create the avenue where engaged survivors can reflect on the experiences that make\nthem who they are, how they found their strength by the virtue of the past and share how\nthey create their own paths to a peaceful future.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '- To be the haven for victims of abuse to confined in for support and healing as the case may be especially those that will be in need of special remedy who wish to overcome their trauma and move towards a place of healing and growth.\n\n- To help curb the crisis of gender based violence and prevent the rampant of gender based violence by serving as a place where members can receive information, find support, and share their experiences, and, by doing so, find ways to move forward on their own healing journey.\n\n- To be a platform that connect organizations working on GBV and also link them to security and law enforcement among other supporting partners.\n\n- To be a platform to help connect people to security and emergency response team and gain control of having any occurrence of gender based violence at any locality.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
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
    );
  }
}
