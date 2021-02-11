import 'package:Binta/home_pages/drawer_pages/1.dart';
import 'package:Binta/home_pages/drawer_pages/2.dart';
import 'package:Binta/home_pages/drawer_pages/3.dart';
import 'package:Binta/home_pages/drawer_pages/4.dart';
import 'package:Binta/home_pages/drawer_pages/5.dart';
import 'package:Binta/home_pages/drawer_pages/6.dart';
import 'package:Binta/home_pages/drawer_pages/7.dart';
import 'package:Binta/home_pages/drawer_pages/8.dart';
import 'package:Binta/home_pages/services_pages/services.dart';
import 'package:Binta/home_pages/binta_board/bintaboard.dart';
import 'package:Binta/home_pages/bintabot/bintabot.dart';
import 'package:Binta/home_pages/live_support/live_support.dart';
import 'package:Binta/home_pages/report/report.dart';
import 'package:Binta/home_pages/sms_alert/sms_alert.dart';
import 'package:Binta/services/auth.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    print('Home Page');
    super.initState();
  }

  final _auth = AuthService();
  List<Color> colors = [
    Colors.amber[600],
    Colors.grey,
    colorPrimaryPurple,
    colorFacebook,
    Colors.green,
    colorPrimaryPink
  ];
  List<String> images = [
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
    'lib/shared/assets/icons/sms-alert-icon-15596.png',
  ];
  List<String> texts = [
    'SMS Emergency\n Alert',
    'BintaBot',
    'Services',
    'Report incidence\n to Binta',
    'Join BintaBoard',
    'Live Support'
  ];

  List<Widget> homePages = [
    SmsEmergencyAlert(),
    BintaBot(),
    Services(),
    Report(),
    Bintaboard(),
    LiveSupport()
  ];
  List<Widget> drawerPages = [
    Drawer1(),
    Drawer2(),
    Drawer3(),
    Drawer4(),
    Drawer5(),
    Drawer6(),
    Drawer7(),
    Drawer8()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 45,
                ),
                backgroundColor: Colors.blueGrey[900],
              ),
              subtitle: Text(
                'Pat Patrick',
                style: TextStyle(color: colorBlack),
                textScaleFactor: 1.5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'What is Binta ?',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[0]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'About Binta Initiative',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[1]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Partners',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[2]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Your Rights and Legal...',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[3]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Live Support',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[4]);
              },
            ),
            Divider(
              thickness: 2,
              height: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Change Country',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[5]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Tour',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[6]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'F.A.Q',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Get.to(drawerPages[7]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 20,
              ),
              title: Text(
                'Log Out',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                return showDialog(
                    context: context,
                    child: AlertDialog(
                      title: Text('Do you want to logout from the account?'),
                      content: Text('We hate to see you leave...'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            print(' you choose no');
                            Navigator.of(context).pop();
                          },
                          child: Text('No'),
                        ),
                        FlatButton(
                          onPressed: () async {
                            print('you choose yes');

                            Navigator.of(context).pop();
                            await _auth.signOut();
                          },
                          child: Text("Yes, Logout"),
                        )
                      ],
                    ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: colorWhite,
        iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
        centerTitle: true,
        title: Image.asset(
          "lib/shared/assets/images/binta_logo_only.png",
          scale: 1.5,
        ),
      ),
      body: Container(
        color: colorWhite,
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 10.0 / 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 5.0,
                    shadowColor: Colors.grey,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          child: Container(
                            color: colors[index],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                images[index],
                                color: Colors.white,
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                texts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Get.to(
                    homePages[index],
                    transition: index % 2 == 0
                        ? Transition.leftToRight
                        : Transition.rightToLeft,
                    duration: Duration(milliseconds: 200),
                  );
                },
              );
            }),
      ),
    );
  }
}
