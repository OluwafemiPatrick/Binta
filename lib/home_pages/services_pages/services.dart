import 'package:Binta/home_pages/services_pages/1.dart';
import 'package:Binta/home_pages/services_pages/2.dart';
import 'package:Binta/home_pages/services_pages/3.dart';
import 'package:Binta/home_pages/services_pages/4.dart';
import 'package:Binta/home_pages/services_pages/5.dart';
import 'package:Binta/home_pages/services_pages/6.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Services', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Opacity(
              opacity: 0.1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
              ),
            ),
            _body(),
          ],),
      ),
    );
  }


  Widget _body(){
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
      child: Column(
          children: [
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/serrice_advocacy.png"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("Advocacy", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services1(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/service_counselling.png"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("General Counselling Therapy", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services2(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/service_sexual_right.png"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("Sexual and Reproductive Health Rights", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services3(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/service_case_management.png"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("Case Management Services", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services4(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/service_prevention.png"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("Prevention Support", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services5(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/images/service_modern_slavery.jpeg"),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 4, color: colorPurpleBright),
                                    borderRadius: BorderRadius.circular(12.0),),
                                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Text("Modern Slavery Response", textAlign: TextAlign.center,),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            Services6(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500),
                          );
                        },
                      ),
                    ),
                  ]),
            ),



          ]),
    );
  }


}
