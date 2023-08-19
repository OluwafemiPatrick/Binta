import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class Drawer5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('The Team', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 1.0,),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full.png'),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: null
              )
            ],
          ),
        ));

  }
}
