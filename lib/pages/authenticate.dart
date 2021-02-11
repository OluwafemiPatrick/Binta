import 'package:Binta/pages/sign_in.dart';
import 'package:Binta/pages/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:Binta/shared/colors.dart';
import 'package:get/get.dart';

import '../shared/colors.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  void initState() {
    print("authenticate page");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/shared/assets/images/80961053-46a3-4978-a1dd-fb8743f93b65.jpeg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Container(
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "lib/shared/assets/images/Webp.net-resizeimage (1).png"),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Preventing and ending the silence of \n gender-based violence',
                    style: TextStyle(
                      color: colorBlack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(SignUp(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 200)),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: colorPurpleBright),
                      child: Center(
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(SignIn(),
                          transition: Transition.downToUp,
                          duration: Duration(milliseconds: 200));
                    },
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: colorPrimaryGrey),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: colorPurpleBright,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
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
