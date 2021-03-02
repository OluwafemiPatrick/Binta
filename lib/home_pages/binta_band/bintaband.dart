import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class BintaBand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Binta Band', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container()
    );
  }
}
