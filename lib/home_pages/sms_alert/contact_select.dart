import 'package:Binta/shared/colors.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class SelectContacts extends StatefulWidget {

  @override
  _SelectContactsState createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {

  List<Contact> _contacts = [];

  @override
  void initState() {
    _requestPermission();
    _fetchContacts();
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
          title: Text('Select Contact', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: _contacts.length>0 ? ListView.builder(
          itemCount: _contacts.length,
          itemBuilder: (_, index){
            return _body(
              _contacts[index].displayName!,
              _contacts[index].familyName!,
            );
          }) : Center()
      ),
    );
  }

  Widget _body(String name, String phone){
    return Text(name);
  }

  _fetchContacts() async {
    var status = await Permission.contacts.status;
    if (status.isGranted){
      _contacts = await ContactsService.getContacts(withThumbnails: false);
    }
    else{
      _requestPermission();
    }
  }

  _requestPermission() async {
    var status = await Permission.contacts.status;
    if (status.isDenied){
      Permission.contacts.request();
    }
    else if (status.isPermanentlyDenied){
      openAppSettings();
    }
  }


}
