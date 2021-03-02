import 'package:Binta/shared/colors.dart';
import 'package:flutter/material.dart';

class LiveSupportDashboard extends StatefulWidget {
  @override
  _LiveSupportDashboardState createState() => _LiveSupportDashboardState();
}

class _LiveSupportDashboardState extends State<LiveSupportDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: colorWhite,
            iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
            centerTitle: true,
            title: Text('Live Support', style: TextStyle(color: colorPrimaryPurple),)
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('lib/shared/assets/images/binta_logo_full_only.png'),
                ),
              ),
              Column(
                children: [
                  _body("", "Dr. Funmilayo Pepe", "Social activist and human rights advocate", "", ""),
                  _body("", "Center For Sexual and Gender Rights", "A non-profit organization dedicated to ending sexual and gender based violence in Nigeria.", "", ""),
                  _body("", "Mrs. Bukola Ojo", "Social activist and human rights advocate", "", ""),

                ],
              ),
            ],
          ),
        )
    );
  }

  Widget _body (String profilePic, name, bio, userId, phone){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.person,
            color: colorBlack, size: 38,),
          backgroundColor: colorPrimaryGrey,
        ),
        SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 16.0, color: colorBlack),),
              SizedBox(height: 8.0),
              Text(bio, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 4.0),
                  Container(
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: colorBrown),
                    child: FlatButton(
                      child: Text("Call", style: TextStyle(
                          fontSize: 15.0, color: colorWhite, fontWeight: FontWeight.normal)),
                      onPressed: (){ },
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: colorBrown),
                    child: FlatButton(
                      child: Text("Message", style: TextStyle(
                          fontSize: 15.0, color: colorWhite, fontWeight: FontWeight.normal)),
                      onPressed: (){ },
                    ),
                  ),
                  SizedBox(width: 8.0),
                ],
              ),
              Divider(thickness: 1.5, height: 30.0),
            ],
          ),
        )
      ],
    );
  }

}
