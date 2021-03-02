import 'package:Binta/home_pages/report/report.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportIntro extends StatelessWidget {

  final String text = "Use the next page to report any incident of sexual harassment or an intervention - when someone intervened "
      "to stop a sexual harassment incident, or supported the harassed person.\n \nReport can be made when the incident happens, or anytime afterwards.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Report Incident', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Container(
          child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/report_incident.jpg", fit: BoxFit.fill),
                ),

                Expanded(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Opacity(
                          opacity: 0.1,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.60,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
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
                  child: FlatButton(
                    child: Text("Proceed to Report Incident", style: TextStyle(
                        fontSize: 16.0, color: colorWhite, fontWeight: FontWeight.normal)),
                    onPressed: (){
                      Get.to(
                        Report(),
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
