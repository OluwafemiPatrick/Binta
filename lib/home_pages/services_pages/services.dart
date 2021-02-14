import 'package:Binta/home_pages/services_pages/1.dart';
import 'package:Binta/home_pages/services_pages/2.dart';
import 'package:Binta/home_pages/services_pages/3.dart';
import 'package:Binta/home_pages/services_pages/4.dart';
import 'package:Binta/home_pages/services_pages/5.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<String> images = [
    'assets/images/serrice_advocacy.png',
    'assets/images/service_counselling.png',
    'assets/images/service_sexual_right.png',
    'assets/images/service_case_management.png',
    'assets/images/service_prevention.png',
  ];

  List<String> names = [
    'Advocacy',
    'General Counselling \n Therapy',
    'Sexual and \n Reproductive Health \n Rights',
    'Case Management \n Services ',
    'Prevention Support'
  ];

  List<Widget> servicesPages = [
    Services1(),
    Services2(),
    Services3(),
    Services4(),
    Services5()
  ];


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
              opacity: 0.2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.85,
                    crossAxisCount: 2,
                    mainAxisSpacing: 0),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(width: 4, color: colorPurpleBright)),
                            child: Image.asset(images[index]),
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Expanded(
                          child: Text(names[index], textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                    onTap: () {
                      Get.to(
                        servicesPages[index],
                        transition: index % 2 == 0
                            ? Transition.leftToRight
                            : Transition.rightToLeft,
                        duration: Duration(milliseconds: 600),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
