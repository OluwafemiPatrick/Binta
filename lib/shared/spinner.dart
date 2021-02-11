import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPrimaryPurple,
      child: Center(
        child: SpinKitCircle(
          color: colorWhite,
          size: 100.0,
        ),
      ),
    );
  }
}