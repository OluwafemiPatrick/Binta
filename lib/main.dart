import 'package:Binta/shared/colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'pages/wrapper.dart';
import 'services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: colorPrimaryPurple,
            accentColor: colorWhite,
          ),
          home: AnimatedSplashScreen(
            splash: Image.asset(
              'lib/shared/assets/images/Webp.net-resizeimage (1).png',
            ),
            nextScreen: Wrapper(),
            backgroundColor: colorWhite,
          )),
    );
  }
}
