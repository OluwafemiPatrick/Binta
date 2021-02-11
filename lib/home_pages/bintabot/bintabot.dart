import 'package:Binta/shared/colors.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';


class BintaBot extends StatefulWidget {

  @override
  _BintaBotState createState() => _BintaBotState();
}

class _BintaBotState extends State<BintaBot> {
  final messageInsert = TextEditingController();

  List<Map> messages = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorPrimaryPurple, size: 10),
          centerTitle: true,
          title: Text('BintaBot', style: TextStyle(color: colorPrimaryPurple),)
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text("Today, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                    fontSize: 20
                ),),
              ),
              Flexible(
                  child: ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (context, index) => chat(
                          messages[index]["messages"].toString(),
                          messages[index]["data"]))),
              SizedBox(height: 20),
              Divider(height: 5.0, color: Colors.greenAccent,),
              Container(
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.greenAccent, size: 35,),
                  ),
                  title: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                          15)),
                      color: Color.fromRGBO(220, 220, 220, 1),
                    ),
                    padding: EdgeInsets.only(left: 15),
                    child: TextFormField(
                      controller: messageInsert,
                      decoration: InputDecoration(
                        hintText: "Enter a Message...",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),

                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),
                      onChanged: (value) {

                      },
                    ),
                  ),

                  trailing: IconButton(

                      icon: Icon(Icons.send, size: 30.0, color: Colors.greenAccent),
                      onPressed: () {
                        if (messageInsert.text.isEmpty) {
                          print("empty message");
                        } else {
                          setState(() {
                            messages.insert(0,
                                {"data": 1, "messages": messageInsert.text});
                          });
                          _response(messageInsert.text);
                          messageInsert.clear();
                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      }),
                ),

              ),

              SizedBox(height: 15.0,)
            ]),
      ),

    );

  }

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 8),
      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0 ? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/robot_avatar.jpg"),
            ),
          ) : Container(),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(15.0),
                color: data == 0 ? Color.fromRGBO(23, 157, 139, 1) : Colors.orangeAccent,
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 10.0,),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints( maxWidth: 200),
                            child: Text(message, style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ]),
                )),
          ),

          data == 1? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/android.jpg"),
            ),
          ) : Container(),
        ]),
    );
  }

  void _response(query) async {
    AuthGoogle authGoogle = await AuthGoogle(
        fileJson: "assets/service.json").build();
    Dialogflow dialogflow = Dialogflow (
        authGoogle: authGoogle,
        language: Language.english
    );
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messages.insert(0, {
        "data": 0,
        "messages": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });

    print(aiResponse.getListMessage()[0]["text"]["text"][0].toString());
  }
}
