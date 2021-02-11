import 'package:Binta/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  final _formKey = GlobalKey<FormState>();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'Report Incidence to Binta',
              style: TextStyle(
                color: colorPurpleBright,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: colorPurpleBright, size: 10),
        backgroundColor: colorWhite,
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
            padding: const EdgeInsets.only(top: 8.0),
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      20.0, 20.0, 20.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Use this page to report any incident of sexual harassment or an intervention - when someone intervened to stop a sexual harassment incident or supported the harassed person.\nReport can be made when the incident happens, or anytime afterwards.\n',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.start,
                      ),
                      Text('What would you like to report?\n', style: TextStyle(
                        fontSize: 18, color: colorPurpleBright,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.circle,
                            color: colorPrimaryPurple,
                            size: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0),
                            child: Text('An incident of sexual harassment',
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.circle,
                            color: colorPrimaryPurple,
                            size: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Intervention to an act of\n sexual harassment',
                              style: TextStyle(
                                fontSize: 17,
                                // fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'What did it happen?',
                        style: TextStyle(
                          fontSize: 18,
                          color: colorPurpleBright,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Use mirror to select location\non map',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.my_location_rounded,
                                color: colorGoogle,
                                size: 30,
                              ),
                              onPressed: () {
                                print('location searching..');
                              })
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Briefly describe what happened',
                        style: TextStyle(
                          fontSize: 18,
                          color: colorPurpleBright,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                            key: _formKey,
                            child: Card(
                              color: colorWhite.withOpacity(0.85),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  maxLines: 6,
                                  validator: (String val) {
                                    if (val.trim().isEmpty ||
                                        val.length < 50) {
                                      return 'Minimum 50 letters';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      text = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          'Type whateva you like to '),
                                ),
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            print('submitted');
                          }
                        },
                        child: Container(
                          height: 60,
                          width: 320,
                          decoration: BoxDecoration(
                              // borderRadius:
                              //     BorderRadius.circular(8.0),
                              color: colorPurpleBright),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: colorWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
