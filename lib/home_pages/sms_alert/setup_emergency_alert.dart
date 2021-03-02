import 'package:Binta/home_pages/sms_alert/contact_select.dart';
import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SetupEmergencyAlert extends StatefulWidget {
  @override
  _SetupEmergencyAlertState createState() => _SetupEmergencyAlertState();
}

class _SetupEmergencyAlertState extends State<SetupEmergencyAlert> {

  SharedPreferences prefs;

  String _contactName1="Oluwafemi", _contactName2="", _contactName3="", _contactName4="", _contactName5="", _contactName6="",
      _contactNum1="08137656465", _contactNum2="", _contactNum3="", _contactNum4="", _contactNum5="", _contactNum6="", _userName;

  @override
  void initState() {
    // TODO: implement initState
    _requestPermission();
  //  _retrieveSavedContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Emergency Contacts', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: _body(),
      ),
    );
  }

  Widget _body(){
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          autofocus: false,
          autocorrect: true,
          decoration: InputDecoration(hintText: "Your name"),
          style: TextStyle(fontSize: 16.0, color: colorBlack),
          onChanged: (value) => setState(() => _userName = value),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("Please enter a name your emergency contacts know you with.", style: TextStyle(
            fontSize: 14.0, color: colorRed ),),
        ),
        Expanded(child: _contactSelection()),
        _proceedButton(context),
      ],
    );
  }

  Widget _contactSelection(){
    return ListView(
      children: [
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              _contactName1.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
                  GestureDetector(
                    child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                    onTap: () {},
                  ),
              Text(_contactName1, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum1, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName1.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () { },
                ),
              ),
            ],),
            Column(children: [
              _contactName2.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
              GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                onTap: () async {
                  // List<Contact> contacts = await ContactsService.getContacts(withThumbnails: false);
                  // toastMessage(contacts.length.toString());
                  Get.to(
                    SelectContacts(),
                    transition: Transition.leftToRight,
                    duration: Duration(milliseconds: 500),
                  );
                },
              ),
              Text(_contactName2, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum2, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName2.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () {
                  },
                ),
              )
            ],),
            Column(children: [
              _contactName3.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
              GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                onTap: () {},
              ),
              Text(_contactName3, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum3, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName3.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () { },
                ),
              )
            ],)
          ]),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              _contactName4.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
              GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                onTap: () {},
              ),
              Text(_contactName4, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum4, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName4.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () { },
                ),
              ),
            ],),
            Column(children: [
              _contactName5.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
              GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                onTap: () {},
              ),
              Text(_contactName5, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum5, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName5.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () { },
                ),
              )
            ],),
            Column(children: [
              _contactName6.isNotEmpty ? Icon(Icons.person, size: 60.0, color: colorPrimaryPurple) :
              GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp, size: 60.0, color: colorBlack),
                onTap: () {},
              ),
              Text(_contactName6, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Text(_contactNum6, style: TextStyle(fontSize: 14.0)),
              SizedBox(height: 5.0),
              Visibility(
                visible: _contactName6.isNotEmpty,
                child: GestureDetector(
                  child: Icon(Icons.cancel_outlined, size: 25.0, color: colorRed),
                  onTap: () { },
                ),
              )
            ],)
          ]),
      ]);
  }

  Widget _proceedButton(BuildContext context){
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorPrimaryPurple),
      child: FlatButton(
        child: Text("Save", style: TextStyle(
            fontSize: 16.0, color: colorWhite, fontWeight: FontWeight.normal)),
        onPressed: (){
          Get.to(
            SetupEmergencyAlert(),
            transition: Transition.rightToLeft,
            duration: Duration(milliseconds: 500),
          );
        },
      ),
    );

  }


  _retrieveSavedContacts() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _contactName1 = prefs.getString("contactName1");
      _contactName2 = prefs.getString("contactName2");
      _contactName3 = prefs.getString("contactName3");
      _contactName4 = prefs.getString("contactName4");
      _contactName5 = prefs.getString("contactName5");
      _contactName6 = prefs.getString("contactName6");

      _contactNum1 = prefs.getString("contactNumber1");
      _contactNum2 = prefs.getString("contactNumber2");
      _contactNum3 = prefs.getString("contactNumber3");
      _contactNum4 = prefs.getString("contactNumber4");
      _contactNum5 = prefs.getString("contactNumber5");
      _contactNum6 = prefs.getString("contactNumber6");
    });

  }

  _requestPermission() async {
    var status = await Permission.contacts.status;
    if (status.isUndetermined){
      Permission.contacts.request();
    }
    else if (status.isDenied){
      Permission.contacts.request();
    }
    else if (status.isPermanentlyDenied){
      openAppSettings();
    }

  }


}
