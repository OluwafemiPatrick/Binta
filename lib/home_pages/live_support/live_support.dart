import 'package:Binta/home_pages/live_support/support_dashboard.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveSupport extends StatelessWidget {

  final String text = "Are you a victim of gender or sexual based violence, or do you know someone who is? "
      "\nOur team of legal professionals and social right activists are available to offer you one-on-one "
      "personalized service. \n\nWe are here to ensure that justice is obtained while protecting you from any further harm or threat.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Live Support', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/live_support.jpg", fit: BoxFit.fill),
            ),

            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Opacity(
                    opacity: 0.1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: Text(text, style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),)),
                ],
              )
            ),

            Container(
              height: 40.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: colorPrimaryPurple),
              child: TextButton(
                child: Text("Proceed to Live Support", style: TextStyle(
                    fontSize: 16.0, color: colorWhite, fontWeight: FontWeight.normal)),
                onPressed: (){
                  Get.to(
                    LiveSupportDashboard(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500),
                  );
                },
              ),
            )
          ]),
      )
    );
  }

}
