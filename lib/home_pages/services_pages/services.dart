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
    'lib/shared/assets/services_images/case_management.png',
    'lib/shared/assets/services_images/case_management.png',
    'lib/shared/assets/services_images/case_management.png',
    'lib/shared/assets/services_images/case_management.png',
    'lib/shared/assets/services_images/case_management.png',
  ];
  List<String> names = [
    'Advocacy',
    'General Counselling \n Therapy',
    'Sexual and \n Reproductive Health \n Rights',
    'Case Managemnet \n Services ',
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
      // backgroundColor: colorWhite,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Services',
          style: TextStyle(
            color: colorPurpleBright,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: colorPurpleBright, size: 10),
        backgroundColor: colorWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.685,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                    'lib/shared/assets/images/binta_logo_full_only.png'),
              ),
            ),
            Positioned(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: colorWhite.withOpacity(0.7)),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 9.0 / 10.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 0),
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: GestureDetector(
                        // clipBehavior: Clip.antiAlias,
                        // semanticContainer: true,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(16.0),
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                        width: 7, color: colorPurpleBright)),
                                child: Opacity(
                                    opacity: 0.8,
                                    child: Image.asset(images[index])),
                              ),
                            ),
                            Expanded(
                              // flex: 1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                            )
                          ],
                        ),
                        onTap: () {
                          print(index);
                          Get.to(
                            servicesPages[index],
                            transition: index % 2 == 0
                                ? Transition.leftToRight
                                : Transition.rightToLeft,
                            duration: Duration(milliseconds: 600),
                          );
                        },
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
