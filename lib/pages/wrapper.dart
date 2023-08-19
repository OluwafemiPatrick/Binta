import 'package:Binta/pages/authenticate.dart';
import 'package:Binta/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  _checkUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggedIn = prefs.getBool('logged_in');

    if (loggedIn == true) {
      Get.off(() => HomePage());
    } else {
      Get.off(() => Authenticate());
    }
  }

  @override
  Widget build(BuildContext context) {
    _checkUser();
    return Container();
  }
}
