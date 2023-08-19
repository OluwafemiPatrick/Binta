import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'What is Binta',
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
          Opacity(
            opacity: 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.5,
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Binta represent the brand name for the initiative because is generally used as a girl's name. It is also an African name for girls and other meaning is “with God”; Africa queen.\n\nBinta is known to love her friends, family and will fight for anything that bothers her including family and friends.\n\nBinta is a platform providing support for victims of gender based violence and its prevention as a service integration through awareness creation, partnership collaborations in form of response to remedy and preventive supports where victims and survivors can have easy access to justice, alert outreach to GBV workers for support; security, access direct crisis GBV support services and referrals from GBV providers at proximity.\n\nBinta is an initiative of the Better Civic International Foundation (www.bettercivic.com) running with a vision to make the livelihood of the people better. It’s a resource developed for staff and organizations who have technical expertise and are experienced in providing GBV case management and survivor-centered psychosocial support in humanitarian contexts, who need to adjust or expand their services to reach displaced populations in out-of-camp settings, or in unserved, insecure or hard-to-reach locations via a mobile and web app.",
                                  style: TextStyle(
                                      fontSize: 16,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
