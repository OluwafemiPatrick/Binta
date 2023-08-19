import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Services6 extends StatefulWidget {
  @override
  _Services6State createState() => _Services6State();
}

class _Services6State extends State<Services6> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  String _message1 = "Modern slavery is a serious crime in which people are coerced or deceived into a situation where they are exploited, for the purpose of making a profit. The offence is punishable by up to life imprisonment "
      "under the 2015 Modern Slavery Act.\n \nModern slavery takes many forms including trafficking for sexual exploitation (including prostitution, strip clubs, escort work and pornography), domestic servitude (including working as "
      "cleaners, carers or nannies) and forced labour in work such as nail bars and car washes.";
  String _message2 = "Binta has become the channel connecting victims to stakeholders providing Safe houses. We also advocate against modern slavery and we are committed to using what we learn to improve policy and practice. "
      "We understand the role of the public and organization to combating and addressing cases of modern slavery, we see the need for capacity building by designing training package tailored to modern slavery fighting organizations.";
  String _message3 = "Get support: If you are concerned about someone, please reach out to Binta via support@binta.com. It is available 24 hours a day, seven days a week for anyone who feels they might be a victim of modern slavery and "
      "in need of assistance, or if you encounter someone you suspect may be a victim of modern slavery.";


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
            title: Text('Modern Slavery Response', style: TextStyle(color: colorPrimaryPurple),)
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
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 125,
                            width: 125,
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  width: 4,
                                  color: colorPurpleBright,
                                )),
                            child: Image.asset(
                              'assets/images/service_modern_slavery.jpeg',
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
