import 'package:Binta/home_pages/sms_alert/setup_emergency_alert.dart';
import 'package:Binta/shared/colors.dart';
import 'package:Binta/shared/toast_message.dart';
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

  String _whatWouldYouLike = "What would you like to report?";
  String _anIncidentOf = "An incident of sexual harassment";
  String _intervention = "Intervention to an act of sexual harassment";
  String _where = "Where did it happen?";
  String _useMirror = "Type an address or select location on map";
  String _brieflyDes = "Briefly describe what happened";
  String _typeOfInci = "Type(s) of Incident";

  String type1 = "Facial Expressions (Making any kind of facial expression, licking, smacking, opening the mouth) that suggest sexual intentions).";
  String type2 = "Ogling (Staring or looking inappropriately at someone’s body, body parts and/or eyes)";
  String type3 = "Catcalls (Whistling, shouting, whispering and any kind of sexual sounds/noises)";
  String type4 = "Comments (Sexual remarks about someone’s body or dress or way or way of walking, behaving, working, telling sexual jokes or stories, suggestions that are sexual or off)";
  String type5 = "ndecent Exposure (Showing intimate body parts to someone or masturbating in front of someone or in someone’s presence)";
  String type6 = "Stalking or Following (Following someone close or at a distance by foot or in a car, repeatedly or just once, waiting outside someone’s work/home/car etc)";
  String type7 = "Touching (Touching, massaging, pinching, rubbing up against, standing too close or grabbing and any kind of sexual gesture towards someone)";
  String type8 = "Phone Calls (Making unwanted phone calls, sending text messages that are sexually suggestive and threatening)";
  String type9 = "Online (Repeatedly or occasionally sending unwanted, abusive and obscene messages, comments and/or videos and photos via instant messaging on social media, forums, blog or online discussion board)";
  String type10 = "Sexual Invites (Asking for sex and describing sexual acts or wishes, asking for phone numbers, dinner dates that are explicitly and implicitly sexual in nature)";
  String type11 = "Sexual Photos (Displaying sexual photos or pictures online or offline)";
  String type12 = "Unwanted Attention (Interfering with someone’s work or action by seeking unwelcome contacts, asking to socialize or making sexual demand in place of work or other benefits, giving gifts that are sexually suggestive, insisting on walking/driving someone home or to work in spite of refusal from the victim)";
  String type13 = "Threat (Threatening in any form of sexual harassment and/or assault (including rape)";
  String type14 = "Mob Sexual Harassment (sexual harassment (one or many types) committed by large group of people against one or more individual)";
  String type15 = "Sexual Assault (Coerced and/or forced sexual act such as kissing, undressing etc.)";
  String type16 = "Rape (Coerced and/or forced oral, anal or vagina penetration using body parts or other objects)";
  String type17 = "Mob Sexual Assault/Rape (Sexual assault (including rape) committed by large group of people against one or more individuals)";

  bool _isType1 = false;
  bool _isType2 = false;
  bool _isType3 = false;
  bool _isType4 = false;
  bool _isType5 = false;
  bool _isType6 = false;
  bool _isType7 = false;
  bool _isType8 = false;
  bool _isType9 = false;
  bool _isType10 = false;
  bool _isType11 = false;
  bool _isType12 = false;
  bool _isType13 = false;
  bool _isType14 = false;
  bool _isType15 = false;
  bool _isType16 = false;
  bool _isType17 = false;

  bool _isTypeSelected = false;
  bool _isOneSelected = true;
  bool _isTwoSelected = false;
  bool _role1 = true;
  bool _role2 = false;
  bool _role3 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('Report Incident to Binta ', style: TextStyle(color: colorPrimaryPurple),)
      ),

      body: Stack(
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
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: ListView(
              children: <Widget>[
                _body(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _body(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(_whatWouldYouLike, style: TextStyle(
          fontSize: 16, color: colorPurpleBright, fontWeight: FontWeight.bold)),
      SizedBox(height: 15.0,),
      FlatButton.icon(
          onPressed: () {
            setState(() => _isOneSelected = !_isOneSelected);
          },
          icon: Icon(_isOneSelected ? Icons.radio_button_on : Icons.radio_button_off,
            color: colorPrimaryPurple, size: 20.0,
          ),
          label: Text(_anIncidentOf, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),)
      ),
      FlatButton.icon(
          onPressed: () {
            setState(() => _isTwoSelected = !_isTwoSelected);
          },
          icon: Icon(_isTwoSelected ? Icons.radio_button_on : Icons.radio_button_off,
            color: colorPrimaryPurple, size: 20.0,
          ),
          label: Text(_intervention, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),)
      ),
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
      Text("My role was", style: TextStyle(
          fontSize: 16, color: colorPurpleBright, fontWeight: FontWeight.bold
      )),
      SizedBox(height: 15.0,),
      FlatButton.icon(
          onPressed: () {
            setState(() => _role1 = !_role1);
          },
          icon: Icon(_role1 ? Icons.radio_button_on : Icons.radio_button_off,
            color: colorPrimaryPurple, size: 20.0,
          ),
          label: Text("I was harassed", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),)
      ),
      FlatButton.icon(
          onPressed: () {
            setState(() => _role2 = !_role2);
          },
          icon: Icon(_role2 ? Icons.radio_button_on : Icons.radio_button_off,
            color: colorPrimaryPurple, size: 20.0,
          ),
          label: Text("I witnessed the incident", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),)
      ),
      FlatButton.icon(
          onPressed: () {
            setState(() => _role3 = !_role3);
          },
          icon: Icon(_role3 ? Icons.radio_button_on : Icons.radio_button_off,
            color: colorPrimaryPurple, size: 20.0,
          ),
          label: Text("I heard the incident", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),)
      ),
      SizedBox(height: 40.0),
      GestureDetector(
        child: Row(
          children: [
            Text(_typeOfInci, style: TextStyle(
                fontSize: 16, color: colorPurpleBright, fontWeight: FontWeight.bold
            )),
            SizedBox(width: 10.0,),
            _isTypeSelected ? Icon(Icons.arrow_drop_down, size: 30.0, color: colorPurpleBright,)
                : Icon(Icons.arrow_right, size: 30.0, color: colorPurpleBright,)
          ],),
        onTap: () {
          setState(() => _isTypeSelected = !_isTypeSelected);
        },
      ),
      _typeOfIncident(),
      SizedBox(height: 40.0),
      Text(_brieflyDes, style: TextStyle(fontSize: 16.0,
          color: colorPurpleBright, fontWeight: FontWeight.bold
      )),
      SizedBox(height: 20.0),
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
      SizedBox(height: 40.0,),
      _submitReport(),
    ]);
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
          toastMessage("Submission received");
        },
      ),
    );
  }


  Widget _typeOfIncident(){
    return Visibility(
      visible: _isTypeSelected,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType1 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType1 = !_isType1);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type1, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType2 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType2 = !_isType2);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type2, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType3 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType3 = !_isType3);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type3, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType4 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType4 = !_isType4);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type4, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType5 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType5 = !_isType5);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type5, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType6 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType6 = !_isType6);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type6, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType7 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType7 = !_isType7);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type7, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType8 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType8 = !_isType8);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type8, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType9 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType9 = !_isType9);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type9, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType10 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType10 = !_isType10);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type10, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType11 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType11 = !_isType11);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type11, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType12 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType12 = !_isType12);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type12, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType13 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType13 = !_isType13);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type13, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType14 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType14 = !_isType14);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type14, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType15 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType15 = !_isType15);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type15, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType16 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType16 = !_isType16);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type16, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.0,
                  child: FlatButton(
                    child: _isType17 ? Icon(Icons.check_box, size: 25.0,)
                        : Icon(Icons.check_box_outline_blank, size: 25.0,),
                    onPressed: (){
                      setState(() => _isType17 = !_isType17);
                    },
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(child: Text(type17, style: TextStyle(fontSize: 15.0, color: colorBlack),))
              ],
            ),
          ),

        ],
      ),
    );
  }


}
