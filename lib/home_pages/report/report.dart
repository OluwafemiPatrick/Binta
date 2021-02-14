import 'package:Binta/home_pages/sms_alert/setup_emergency_alert.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  final _formKey = GlobalKey<FormState>();

  String text = '';
  String _incidentLocation = '';

  String _useThisPage = "Use this page to report any incidence of sexual harassment or an intervention - when someone intervened "
      "to stop a sexual harassment incident or supported the harassed person.\n \nReport can be made when the incident happens, or anytime afterwards.";
  String _whatWouldYouLike = "What would you like to report?";
  String _anIncidentOf = "An incidence of sexual harassment";
  String _intervention = "Intervention to an act of sexual harassment";
  String _where = "Where did it happen?";
  String _useMirror = "Type an address or select location on map";
  String _brieflyDes = "Briefly describe what happened";

  bool _isOneSelected = true;
  bool _isTwoSelected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Report Incidence to Binta ', style: TextStyle(color: colorPrimaryPurple),)
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Opacity(
            opacity: 0.2,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _body()),
                _submitReport()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _body(){
    return ListView(children: [
      Text(_useThisPage, style: TextStyle(fontSize: 15)),
      SizedBox(height: 40.0,),
      Text(_whatWouldYouLike, style: TextStyle(
          fontSize: 16, color: colorPurpleBright, fontWeight: FontWeight.bold)),
      SizedBox(height: 15.0,),
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(_isOneSelected ? Icons.radio_button_on : Icons.radio_button_off,
              color: colorPrimaryPurple, size: 20.0,
            ),
            SizedBox(width: 15.0),
            Expanded(child: Text(_anIncidentOf, style: TextStyle(fontSize: 16.0),))
          ]),
      SizedBox(height: 14.0),
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(_isTwoSelected ? Icons.radio_button_on : Icons.radio_button_off,
              color: colorPrimaryPurple, size: 20.0,
            ),
            SizedBox(width: 15.0),
            Expanded(child: Text(_intervention, style: TextStyle(fontSize: 16.0),))
          ]),
      SizedBox(height: 40.0),
      Text(_where, style: TextStyle(
          fontSize: 16, color: colorPurpleBright, fontWeight: FontWeight.bold
      )),
      SizedBox(height: 15.0,),
      Container(
        height: 30.0,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: new InputDecoration( hintText: _useMirror),
                onChanged: (value){
                  setState(() => _incidentLocation = value);
                },
              ),
            ),
            IconButton(icon: Icon(
                Icons.my_location_rounded, color: colorGoogle, size: 25),
                onPressed: () {
                  print('location searching..');
                })
          ],
        ),
      ),
      SizedBox(height: 40.0),
      Text(_brieflyDes, style: TextStyle(fontSize: 16.0,
          color: colorPurpleBright, fontWeight: FontWeight.bold
      )),
      SizedBox(height: 15.0),
      Card(
        color: colorWhite.withOpacity(0.85),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 6,
            keyboardType: TextInputType.multiline,
            autofocus: false,
            onChanged: (val) {
              setState(() => text = val);
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "type here"),
          ),
        ),
      ),
    ],);
  }

  Widget _submitReport(){
    return Container(
      height: 40.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorPrimaryPurple),
      child: FlatButton(
        child: Text("Submit Report", style: TextStyle(
            fontSize: 16.0, color: colorWhite, fontWeight: FontWeight.normal)),
        onPressed: (){
          Get.to(
            SetupEmergencyAlert(),
            transition: Transition.leftToRight,
            duration: Duration(milliseconds: 300),
          );
        },
      ),
    );

  }


}
