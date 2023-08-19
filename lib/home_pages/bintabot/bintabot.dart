import 'package:Binta/shared/colors.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';


class BintaBot extends StatefulWidget {

  @override
  _BintaBotState createState() => _BintaBotState();
}

class _BintaBotState extends State<BintaBot> {
  final messageInsert = TextEditingController();

  late List messages;

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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset("assets/images/chat_background.png",
                  fit: BoxFit.fill,
                )
              ),
            ),
            Column(
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.only(top: 5, bottom: 5),
                  //   child: Text("Today, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                  //       fontSize: 15
                  //   ),),
                  // ),
                  Flexible(
                      child: ListView.builder(
                          reverse: true,
                          itemCount: messages.length,
                          itemBuilder: (context, index) => chat(
                              messages[index]["messages"].toString(),
                              messages[index]["data"]))),
                  SizedBox(height: 15.0),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Color.fromRGBO(220, 220, 220, 1),
                            ),
                            padding: EdgeInsets.only(left: 15),
                            child: TextFormField(
                              controller: messageInsert,
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                              decoration: InputDecoration(
                                hintText: "Enter a message...",
                                hintStyle: TextStyle(color: Colors.black26),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              style: TextStyle(fontSize: 16, color: Colors.black),
                              onChanged: (value) { },
                            ),
                          ),
                        ),
                        SizedBox(width: 6.0),
                        Container(
                          width: 42.0,
                          height: 42.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: colorPrimaryPurple,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.send, size: 30.0, color: colorWhite),
                            onPressed: () {
                              if (messageInsert.text.isEmpty) {
                                print("empty message");
                              } else {
                                setState(() {
                                  messages.insert(0,
                                      {"data": 1, "messages": messageInsert.text});
                                });
                                //_response(messageInsert.text);
                                messageInsert.clear();
                              }
                              FocusScopeNode currentFocus = FocusScope.of(context);
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                            }),
                        ),
                      ],
                    ),
                  ),
                ]),
          ],
        ),
      ),

    );

  }

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 6),
      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0 ? Container(
            height: 40,
            width: 40,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/robot_avatar.png"),
            ),
          ) : Container(),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Bubble(
                radius: Radius.circular(15.0),
                color: data == 0 ? Colors.blueGrey[700] : Colors.blueGrey[600],
                elevation: 0.0,
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
                  ])),
          ),

          data == 1? Container(
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.person,
                color: Colors.white, size: 34,
              ),
              backgroundColor: Colors.blueGrey[800],
            ),
          ) : Container(),
        ]),
    );
  }

}
