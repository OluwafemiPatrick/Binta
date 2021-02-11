import 'package:Binta/shared/colors.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class SelectContacts extends StatefulWidget {

  final Iterable<Contact> contacts;
  final String itemNumber;

  SelectContacts(this.contacts, this.itemNumber);

  @override
  _SelectContactsState createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  String _itemNumber;
  Iterable<Contact> _contacts;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _itemNumber = widget.itemNumber;
      _contacts = widget.contacts;
    });
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
            return _body("", ""
           //   _contacts[index].displayName,
             // _contacts[index].phones,
            );
          }) : Center()
      ),
    );
  }

  Widget _body(String name, String phone){
    return Text("");
  }

}
