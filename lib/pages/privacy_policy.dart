import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {

  final String _title1 = "Privacy";
  final String _title2 = "Statistical Information";

  final String _text1 = "No personal identification information, such as your name, email address or IP address is ever required or stored in this process, and your details are never sold to any third party.";
  final String _text2 = "Demographic information like age, gender, partnership / marital situation, type of residence area, education, occupational status might be collected. It is your decision if you actively "
      "disclose this information. However, it will not be possible to relate the information to a specific person.\n \nThis information is stored along with a code linked to the Unique Device ID (of the phone). "
      "Please note this Unique Device ID cannot be linked to the phone number or the IP address of the user and therefore guarantees confidentiality.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Privacy Policy', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: _body()
              )
            ],
          ),
        ));
  }

  Widget _body(){
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0,),
            Text(_title1, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text1, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 40.0,),
            Text(_title2, style: TextStyle(fontSize: 18.0, color: colorBlack, fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(_text2, style: TextStyle(fontSize: 16.0, color: colorBlack)),
            SizedBox(height: 20.0,),
          ],
        ),
      ],
    );
  }
}
