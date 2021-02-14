import 'package:Binta/home_pages/sms_alert/setup_emergency_alert.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmsEmergencyAlert extends StatelessWidget {

  String _userName="Oluwafemi";
  String topText = "Please choose the message you want to send to your emergency contacts.";

  double _textSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: colorWhite,
        iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
        centerTitle: true,
        title: Text('SMS Emergency Alert', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 15.0, top: 10.0, bottom: 10.0),
        child: Column(children: [
          Text(topText, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),),
          Expanded(child: _body(_userName),),
          _setupEmergencyContacts(context),
        ],)
      ),
    );
  }


  Widget _body(String username){
    String message1 = "This is " + username + ". I am at the risk of violence, please help me at home.";
    String message2 = "This is " + username + ". I am at the risk of violence, please help me at work.";
    String message3 = "This is " + username + ". I am at the risk of violence, please help me at school.";
    String message4 = "This is " + username + ". I am at the risk of violence, please help me at friend's place.";
    String message5 = "This is " + username + ". I am at the risk of violence, please help me.";

    return ListView(children: [
        SizedBox(height: 50.0),
        Row(
          children: [
            Expanded(child: Text(message1, style: TextStyle(fontSize: _textSize, color: colorBlack))),
            SizedBox(width: 8.0),
            GestureDetector(
              child: Icon(Icons.send, color: colorPrimaryPurple,),
              onTap: () {},
            )
          ]),
        Divider(thickness: 1.0, height: 40.0,),
        Row(
            children: [
              Expanded(child: Text(message2, style: TextStyle(fontSize: _textSize, color: colorBlack))),
              SizedBox(width: 8.0),
              GestureDetector(
                child: Icon(Icons.send, color: colorPrimaryPurple,),
                onTap: () {},
              )
            ]),
        Divider(thickness: 1.5, height: 40.0,),
        Row(
            children: [
              Expanded(child: Text(message3, style: TextStyle(fontSize: _textSize, color: colorBlack))),
              SizedBox(width: 8.0),
              GestureDetector(
                child: Icon(Icons.send, color: colorPrimaryPurple,),
                onTap: () {},
              )
            ]),
        Divider(thickness: 1.5, height: 40.0,),
        Row(
            children: [
              Expanded(child: Text(message4, style: TextStyle(fontSize: _textSize, color: colorBlack))),
              SizedBox(width: 8.0),
              GestureDetector(
                child: Icon(Icons.send, color: colorPrimaryPurple,),
                onTap: () {},
              )
            ]),
        Divider(thickness: 1.5, height: 40.0,),
        Row(
            children: [
              Expanded(child: Text(message5, style: TextStyle(fontSize: _textSize, color: colorBlack))),
              SizedBox(width: 8.0),
              GestureDetector(
                child: Icon(Icons.send, color: colorPrimaryPurple,),
                onTap: () {},
              )
            ]),
        Divider(thickness: 1.5, height: 40.0,),
      ],
    );
  }

  Widget _setupEmergencyContacts(BuildContext context){
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorPrimaryPurple),
      child: FlatButton(
        child: Text("Setup Emergency Contacts", style: TextStyle(
            fontSize: _textSize, color: colorWhite, fontWeight: FontWeight.normal)),
        onPressed: (){
          Get.to(
            SetupEmergencyAlert(),
            transition: Transition.leftToRight,
            duration: Duration(milliseconds: 500),
          );
        },
      ),
    );

  }


}
