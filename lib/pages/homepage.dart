import 'package:Binta/home_pages/binta_board/bintaboard.dart';
import 'package:Binta/home_pages/bintabot/bintabot.dart';
import 'package:Binta/home_pages/drawer_pages/1.dart';
import 'package:Binta/home_pages/drawer_pages/2.dart';
import 'package:Binta/home_pages/drawer_pages/3.dart';
import 'package:Binta/home_pages/drawer_pages/4.dart';
import 'package:Binta/home_pages/drawer_pages/5.dart';
import 'package:Binta/home_pages/drawer_pages/6.dart';
import 'package:Binta/home_pages/drawer_pages/7.dart';
import 'package:Binta/home_pages/drawer_pages/8.dart';
import 'package:Binta/home_pages/live_support/live_support.dart';
import 'package:Binta/home_pages/report/report.dart';
import 'package:Binta/home_pages/services_pages/services.dart';
import 'package:Binta/home_pages/sms_alert/sms_alert.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> drawerPages = [
    Drawer1(),
    Drawer2(),
    Drawer3(),
    Drawer4(),
    Drawer5(),
    Drawer6(),
    Drawer7(),
    Drawer8(),
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
                textScaleFactor: 1.3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text('What is Binta ?',
                textScaleFactor: 1.2),
              onTap: () {
                Get.to(drawerPages[0]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text(
                'About Binta Initiative',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Get.to(drawerPages[1]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text(
                'Partners',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Get.to(drawerPages[2]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text(
                'Your Rights and Legal...',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Get.to(drawerPages[3]);
              },
            ),
            ListTile(
              leading: Icon(Icons.circle,
                color: colorPurpleBright, size: 16,
              ),
              title: Text('The Team', textScaleFactor: 1.2,),
              onTap: () {
                Get.to(drawerPages[4]);
              },
            ),
            ListTile(
              leading: Icon(Icons.circle,
                color: colorPurpleBright, size: 16,
              ),
              title: Text('F.A.Q', textScaleFactor: 1.2,),
              onTap: () {
                Get.to(drawerPages[5]);
              },
            ),
            Divider(
              thickness: 2,
              height: 40,
            ),
            ListTile(
              leading: Icon(Icons.circle,
                color: colorPurpleBright, size: 16,
              ),
              title: Text('Change Country', textScaleFactor: 1.2,),
              onTap: () {
                Get.to(drawerPages[6]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text(
                'Tour',
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Get.to(drawerPages[7]);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: colorPurpleBright,
                size: 16,
              ),
              title: Text('Log Out', style: TextStyle(color: colorRed),
                textScaleFactor: 1.2,
              ),
              onTap: () {
                _logoutDialog();
              },
            ),
          ]),
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
      body: _body(),
    );
  }


  Widget _body(){
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: colorPrimaryAmber,
                        borderRadius: BorderRadius.circular(12.0),),
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/home_sms_alert.png", color: colorWhite),
                          ),
                          SizedBox(height: 5.0),
                          Text("SMS Emergency", style: TextStyle(fontSize: 14.0, color: colorWhite)),
                          SizedBox(height: 2.0),
                          Text("Alert", style: TextStyle(fontSize: 14.0, color: colorWhite),)
                        ])
                    ),
                    onTap: () {
                      Get.to(
                        SmsEmergencyAlert(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: colorPrimaryGrey,
                        borderRadius: BorderRadius.circular(12.0),),
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset("assets/images/home_chatbot.png", color: colorWhite),
                            ),
                            SizedBox(height: 5.0),
                            Text("BintaBot", style: TextStyle(fontSize: 14.0, color: colorWhite),)
                          ])
                    ),
                    onTap: () {
                      Get.to(
                        BintaBot(),
                        transition: Transition.leftToRight,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                )
              ]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: colorPrimaryPurple,
                          borderRadius: BorderRadius.circular(12.0),),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/home_service.png", color: colorWhite),
                              ),
                              SizedBox(height: 5.0),
                              Text("Services", style: TextStyle(fontSize: 14.0, color: colorWhite)),
                            ])
                    ),
                    onTap: () {
                      Get.to(
                        Services(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: colorPrimaryBlue,
                          borderRadius: BorderRadius.circular(12.0),),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/home_report.png", color: colorWhite),
                              ),
                              SizedBox(height: 5.0),
                              Text("Report Incidence", style: TextStyle(fontSize: 14.0, color: colorWhite),),
                              SizedBox(height: 2.0),
                              Text("to Binta", style: TextStyle(fontSize: 14.0, color: colorWhite),)
                            ])
                    ),
                    onTap: () {
                      Get.to(
                        Report(),
                        transition: Transition.upToDown,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                )
              ]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: colorPrimaryGreen,
                          borderRadius: BorderRadius.circular(12.0),),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/home_bintaband.png", color: colorWhite),
                              ),
                              SizedBox(height: 5.0),
                              Text("BintaBoard", style: TextStyle(fontSize: 14.0, color: colorWhite)),
                            ])
                    ),
                    onTap: () {
                      Get.to(
                        BintaBoard(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: colorPrimaryPink,
                          borderRadius: BorderRadius.circular(12.0),),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset("assets/images/home_live_support.png", color: colorWhite),
                              ),
                              SizedBox(height: 5.0),
                              Text("Live Support", style: TextStyle(fontSize: 14.0, color: colorWhite),)
                            ])
                    ),
                    onTap: () {
                      Get.to(
                        LiveSupport(),
                        transition: Transition.leftToRight,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                )
              ] ),
          ),
        ]),
    );
  }

  Future _logoutDialog(){
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
                Navigator.of(context).pop();
                //  await _auth.signOut();
              },
              child: Text("Yes, Logout"),
            )
          ],
        ));
  }

}
