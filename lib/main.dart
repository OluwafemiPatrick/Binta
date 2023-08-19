import 'package:Binta/shared/colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Binta',
        theme: ThemeData(
          primaryColor: colorPrimaryPurple,
        ),
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'lib/shared/assets/images/Webp.net-resizeimage (1).png',
          ),
          nextScreen: Wrapper(),
          backgroundColor: colorWhite,
        ));
  }
}
